// 导入express

let express = require("express");

// 实例化路由类
let router = express.Router();

// 导入文件处理模块

const fs = require("fs");

// 导入数据库相关模块

const mssql = require("../config/db.js");

// 导入moment模块

const moment = require("moment");

const page = require("../common/page.js");

//用于保持登陆
var logincroot='';
var loginstatus=false;

//临时购物车
var shopcar =[];

//时间
var otime= moment().format("YYYY-MM-DD HH:mm:ss");;
var arr = '';

// 前台首页

router.get('/',function(req,res,next){

	// 读取网站配置相关数据'
	let webConfigData = fs.readFileSync(__dirname+"/../config/webConfig.json");
	let webConfig = JSON.parse(webConfigData.toString());


	
	for(let i=0;i<otime.length;i++){
		if(parseInt(otime[i])>=0&&parseInt(otime[i])<=9){
			arr+=otime[i];
		}
	}

	mssql("select * from customers where croot = '"+logincroot+"'",function(data2){
		mssql("select * from flower",function(data){
			mssql("select * from userfeedback",function(data1){
					 data1.recordset.forEach(function(item){
					item.utime = moment(item.utime).format("YYYY-MM-DD HH:mm:ss");
					 })
				res.render("home/index.html",{
					webConfig:webConfig,
					flowerData:data.recordset,
					feedbackData:data1.recordset,
					logincroot:logincroot,
					userinfo:data2.recordset[0]
				});
			})
		})
	})




			
	//item.time = moment(item.time*1000).format("YYYY-MM-DD HH:mm:ss");

	
});


// 瀑布流展示

router.get('/falls',function(req,res,next){
	res.render("home/falls.html");
});



// 前台登录页面
router.get("/login",function(req,res,next){
	res.render("home/login.html");
});
router.post('/check',function(req,res,next){
	let {username,password} = req.body;

	username+=""
	// 判断

	if (username) {
		
		if (password) {
		
			// 判断数据库中是否存在该用户
			mssql("select * from customers where croot = "+username+" and cpossword = "+password,function(data2){
				var length = parseInt(data2.rowsAffected)
					if (length) {
						req.session.user = data2.recordset[0].croot;
						logincroot =  data2.recordset[0].croot;
						loginstatus = true;

						res.send("<script>alert('登录成功');location.href='/'</script>");

					}else{
						res.send("<script>alert('登录失败');location.href='/login'</script>");
					}
			});
		}else{
			res.send("<script>alert('密码不为空');location.href='/login'</script>");
		}
	}else{
		res.send("<script>alert('用户名不为空');location.href='/login'</script>");
	}
});

//退出登录
router.get("/logout",function(req,res,next){
                      loginstatus = false;
                      logincroot = "";
	                    res.send("<script>alert('退出成功');location.href='/'</script>");

});

// 前台注册页面

router.get('/register',function(req,res,next){
      res.render('home/register.html')
});

//用户注册
router.post("/register",function(req,res,next){

	let {cname,csex,cphone,caddr,cpossword,possword} = req.body;

	if(cname&&csex&&cphone&&caddr&&cpossword&&possword) {
		
		if(cpossword == possword){
		// sql语句
	
		mssql("select count(*) as num from customers",function(data){
			
      let count = data.recordset[0].num; 
			let croot = "00000" +(parseInt(count)+1);
			mssql("insert into customers values('"+croot+"','"+cpossword+"','"+cname+"','"+csex+"','"+cphone+"','"+caddr+"','0')",function(data){
			
	 if (data.rowsAffected==1) {
		 res.send("<script>alert('注册成功!您的账号为:"+croot+"密码为:"+possword+"!请妥善保管!');location.href='/'</script>");
	 }else{
		 res.send("<script>alert('添加失败');history.go(-1)</script>");
	 }
 
});
		})
		}else{
			res.send("<script>alert('添加失败!两次密码不一致,请重新输入');history.go(-1)</script>");
		}


		
	}else{
		// // sql语句
		// sql = `update admin set status = ${status} where id = ${id}`;
	}


});




// 订单管理首页
router.get('/order',function(req,res,next){


	if(logincroot!=''){
		let p = req.query.p ? req.query.p :1;
		let search = req.query.search ? req.query.search :"";
		let size=5;
	
		// 从数据库中查询数据
	
		mssql("select count(*) as tot from orders where onumber like '%"+search+"%' and croot = '"+logincroot+"'",function(data){
	
			// 获取总数据
			let tot = data.recordset[0].tot;
			let fpage = page(tot,p,size);
	
		mssql("select top "+size+" * from orders where onumber not in (select top "+fpage.start+" onumber from orders) and onumber like '%"+search+"%' and croot = '"+logincroot+"'",function(data){
	
				 data.recordset.forEach(item=>{
					 item.otime = moment(item.otime).format("YYYY-MM-DD HH:mm:ss");
				 });
	
				res.render("home/orderlist.html",
					{
						data:data.recordset,
						show:fpage.show,
						search:search
					}
				);
		});
	
	}); 
	}else{
		res.send("<script>alert('请先登录!');location.href='/'</script>")
	}
	
});

// 订单管理添加页面
router.get('/detail',function(req,res,next){

    let id = req.query.id;
	let size=5;

	// 从数据库中查询数据
	mssql("select count(*) as tot from detailorder where onumber = '"+id+"'",function(data){
		
		// 获取总数据
		let tot = data.recordset[0].tot;
		let fpage = page(tot,1,size);

	mssql("select top "+size+" * from detailorder where onumber not in (select top "+fpage.start+" onumber from detailorder where onumber = '"+id+"') and onumber = '"+id+"'",function(data1){

			res.render("home/detail.html",
				{
					data:data1.recordset,
					show:fpage.show,
				}
			);
	});

});
});


//订单评论

router.get("/feedback",function(req,res,next){
	// 接受对应的数据
	let {id} = req.query;

	mssql("select * from userfeedback where onumber = '"+id+"'",function(data){
		data.recordset[0].utime = moment(data.recordset[0].otime).format("YYYY-MM-DD HH:mm:ss");
	      if(data.rowsAffected == 1){
			res.render("home/feedback.html",{data:data.recordset[0]});
		  }else{
			res.send("<script>alert('该用户还未做评论!');location.href='/order'</script>");
		  }
			
	});
})

//提交评论

router.get("/ajax_comment",function(req,res,next){
	// 接受对应的数据
	let {comment,onumber} = req.query;
	mssql("update userfeedback  set ucontent = '"+comment+"'  where onumber = '"+onumber+"'",function(data){

		// data.recordset[0].utime = moment(data.recordset[0].otime).format("YYYY-MM-DD HH:mm:ss");
	      if(data.rowsAffected == 1){

			  res.send('1')
		  }else{
			res.send("0");
		  }
			
	});
})

//添加购物车
router.get("/ajax_shopcar",function(req,res,next){
				let id = req.query;

				console.log();
			
				let ftotal = parseInt(id.id.fmoney) * parseInt(id.id.dcount);
				let keypush = true;
				let num;
                 
				for(let i=0;i<shopcar.length;i++){
					if(shopcar[i].id == id.id.id){
					  shopcar[i].dcount = parseInt(shopcar[i].dcount) + parseInt(id.id.dcount) + '';
					  shopcar[i].ftotal = shopcar[i].ftotal + ftotal;
						keypush = false;

						// mssql("update detailorder set dcount = "+ shopcar[i].dcount+",dtotal = "+ shopcar[i].ftotal+" where ditem = "+shopcar[i].id,function(data){
						// 	 if(data.rowsAffected == 1){
						// 		res.send('1');
								break;
					//  }
				// })
					}
				}
				if(keypush){
					id.id.ftotal  = ftotal;
					console.log(id.id)
					shopcar.push(id.id);

				// 	mssql("select count(*) as num from detailorder",data1=>{
				// 		num =100 + parseInt(data1.recordset[0].num) + 1;
				// 		console.log(num)
				// 		mssql("insert into detailorder values('"+num+"','"+arr+"','"+id.id.fname+"','"+id.id.dcount+"','"+id.id.fmoney+"','"+id.id.ftotal+"')",function(data){
				// 			console.log(data.rowsAffected[0])
				// 			console.log(data.rowsAffected)
				// 				if(data.rowsAffected == 1){
				// 					
				// 		}
				//  })

				// 	 })

					keypush = true;
				}
				res.send('1')
			
})

//购物车首页
router.get("/shopcar",function(res,req,next){
	     req.render('home/shopcar.html',{data:shopcar})
})

//移出购物车
router.get("/ajax_reshopcar",(res,req,next)=>{
			 let {id} = res.query
       for(let i =0;i<shopcar.length;i++){
				 if(shopcar[i].id == id){
				shopcar.splice(i,1);
					 break;
				 }
			 }
			 req.send('1');
})


//加载完成订单页面
router.get("/pay",function(res,req,next){
 //登录状态查询
	if(loginstatus == true){
		mssql("select * from customers where croot = '"+logincroot+"'",function(data){

		  req.render('home/pay.html',{data:data.recordset[0]})

		})
	}else{
		req.send("<script>alert('请先登录!'); location.href='/login'; </script>")
	}
    
})

//提交订单到数据库
router.post("/pay",function(res,req,next){
		 let {cname,cphone,caddr} = res.body;
		 let ototal=0;

     shopcar.forEach(item=>{
			 ototal+=item.ftotal;
			
		 })
		 console.log('begin')
		 mssql("insert into orders values('"+arr+"','"+logincroot+"','000001','"+otime+"','待出库','"+ototal+"','"+caddr+"')",data=>{
			 if(data.rowsAffected == 1){
					shopcar = [];
					req.send("<script>alert('提交订单成功'); location.href = '/';</script>")
			 }else{
				req.send("<script>alert('提交订单失败'); location.href = '/pay';</script>")
			 }
		 })
})

module.exports = router;
