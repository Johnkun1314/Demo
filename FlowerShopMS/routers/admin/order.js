let express = require("express");

let router = new express.Router();

const mssql = require("../../config/db.js");

const crypto = require('crypto');
// 导入moment模块
const moment = require("moment");

const page = require("../../common/page.js");
// 订单管理首页
router.get('/',function(req,res,next){
	// 获取地址栏数据 req.query
	// 获取表单数据 req.body
	let p = req.query.p ? req.query.p :1;
	let search = req.query.search ? req.query.search :"";
	let size=5;

	// 从数据库中查询数据

	mssql("select count(*) as tot from orders where onumber like '%"+search+"%'",function(data){

		// 获取总数据
		let tot = data.recordset[0].tot;
		let fpage = page(tot,p,size);

	mssql("select top "+size+" * from orders where onumber not in (select top "+fpage.start+" onumber from orders) and onumber like '%"+search+"%'",function(data){

             data.recordset.forEach(item=>{
			 	item.otime = moment(item.otime).format("YYYY-MM-DD HH:mm:ss");
			 });

			res.render("admin/order/index.html",
				{
					data:data.recordset,
					show:fpage.show,
					search:search
				}
			);
	});

});
});

// 订单管理添加页面
router.get('/detail',function(req,res,next){
	// res.send("订单管理添加页面");
    let p = req.query.p ? req.query.p :1;
	// let search = req.query.search ? req.query.search :"";
	let size=5;

	// 从数据库中查询数据

	mssql("select count(*) as tot from orders where onumber = '"+p+"'",function(data){

		// 获取总数据
		let tot = data.recordset[0].tot;
		let fpage = page(tot,p,size);

	mssql("select top "+size+" * from detailorder where onumber not in (select top "+fpage.start+" onumber from detailorder)",function(data){

			res.render("admin/order/detail.html",
				{
					data:data.recordset,
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
			res.render("admin/order/feedback.html",{data:data.recordset[0]});
		  }else{
			res.send("<script>alert('该用户还未做评论!');location.href='/admin/order'</script>");
		  }
			
	});
})

// 订单管理修改页面
router.get('/edit',function(req,res,next){

	// 接受数据的ID

	let id = req.query.id;

	// 查询对应数据
	mssql("select * from orders where onumber = "+id,function(data){
        console.log('1')
        // 加载修改页面
			res.render("admin/order/edit.html",{data:data.recordset[0]});
		
	})	

});

// 订单数据修改功能
router.post("/edit",function(req,res,next){

	// 接受表单提交的数据
	let {onumber,enumber,ostate} = req.body;
	

	if (onumber&&enumber&&ostate) {		

      mssql("select * from employee where epost = '派送员' and enumber = '"+enumber+"'",function(data){
        if (data.rowsAffected==1) {
            mssql("update orders set enumber = '"+enumber+"',ostate = '"+ostate+"'  where onumber = '"+onumber+"'",function(data){
                console.log(data.rowsAffected)
                 if (data.rowsAffected==1) {
                     res.send("<script>alert('修改成功');location.href='/admin/order'</script>");
                 }else{
                     res.send("<script>alert('修改失败');history.go(-1)</script>");
                 }
             
         });
        }else{
            res.send("<script>alert('修改失败,该员工不是派送员!');history.go(-1)</script>");
        } 
        

      })
		
	}else{
		// // sql语句

	}

});


// 无刷新删除数据
router.get("/ajax_del",function(req,res,next){
	// 接受地址栏数据

	let id = req.query.id;

	// 删除数据

	mssql(`delete from order where onumber = ${id}`,function(data){
            console.log(data);
			// 判断是否执行成功
			if (data.rowsAffected==1) {
				res.send("1");
			}else{
				res.send("0");
			}
		
	});
})

module.exports = router;