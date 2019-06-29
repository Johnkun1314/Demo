let express = require("express");

let router = new express.Router();

const mssql = require("../../config/db.js");

const crypto = require('crypto');
// 导入moment模块
const moment = require("moment");

const page = require("../../common/page.js");
// 花管理首页
router.get('/',function(req,res,next){
	// 获取地址栏数据 req.query
	// 获取表单数据 req.body
	let p = req.query.p ? req.query.p :1;
	let search = req.query.search ? req.query.search :"";
	let size=5;

	// 从数据库中查询数据

	mssql("select count(*) as tot from flower where fitem like '%"+search+"%'",function(data){

		// 获取总数据
		let tot = data.recordset[0].tot;
		let fpage = page(tot,p,size);

	mssql("select top "+size+" * from flower where fitem not in (select top "+fpage.start+" fitem from flower) and fitem like '%"+search+"%'",function(data){
            
            //  data.recordset.forEach(item=>{
			//  	item.time = moment().format("YYYY-MM-DD HH:mm:ss");
			//  });

			res.render("admin/flower/index.html",
				{
					data:data.recordset,
					show:fpage.show,
					search:search
				}
			);
	});

});
});

// 花管理添加页面
router.get('/add',function(req,res,next){
	// res.send("花管理添加页面");
	// 加载页面
	res.render("admin/flower/add.html");
});
// 花的添加功能
router.post("/add",function(req,res,next){
	// 接受数据

	let {fitem,fname,fmoney,finventory,wnumber,sname} = req.body;
	
	mssql("select * from flower where fitem ="+fitem,function(data){
		if (data.rowsAffected==1) {
			res.send("<script>alert('添加失败,编号已存在');history.go(-1)</script>");
		}else{
			mssql("select * from warehourse where wnumber ="+wnumber,function(data){
				if (data.rowsAffected==1) {
					if(fitem&&fname&&fmoney&&finventory&&wnumber&&sname) {		

						// sql语句
						mssql("insert into flower values('"+fitem+"','"+wnumber+"','"+sname+"','"+fname+"','"+finventory+"','"+wnumber+"')",function(data){
						   console.log(data.rowsAffected)
							if (data.rowsAffected==1) {
								res.send("<script>alert('添加成功');location.href='/admin/flower'</script>");
							}else{
								res.send("<script>alert('添加失败');history.go(-1)</script>");
							}
						
					});
						
					}else{
						// // sql语句
						// sql = `update admin set status = ${status} where id = ${id}`;
					}
				}else{
					res.send("<script>alert('添加失败!仓库号不存在!');history.go(-1)</script>");
				}
			})
		}
	})




});

// 无刷新修改状态

// router.get("/ajax_status",function(req,res,next){
// 	// 接受对应的数据
// 	let {id,status} = req.query;

// 	// 修改数据
// 	mssql("update admin set status=? where id = ?",[status,id],function(err,data){
// 		if (err) {
// 			return "";
// 		}else{
// 			if (data.affectedRows==1) {
// 				res.send("1");
// 			}else{
// 				res.send("0");
// 			}
// 		}
// 	});
// })

// 花管理修改页面
router.get('/edit',function(req,res,next){

	// 接受数据的ID

	let id = req.query.id;

	// 查询对应数据
	mssql("select * from flower where fitem = "+id,function(data){
			// 加载修改页面
			res.render("admin/flower/edit.html",{data:data.recordset[0]});
		
	})	

});

// 花数据修改功能
router.post("/edit",function(req,res,next){

	// 接受表单提交的数据
	let {fitem,fname,fmoney,finventory,wnumber,sname} = req.body;
	

	if (fitem!='') {		
		// // 密码加密
		// let md5 = crypto.createHash('md5');
		// password = md5.update(password).digest('hex');
		// sql语句

		mssql("update flower set fname = '"+fname+"',fmoney = '"+fmoney+"',finventory = '"+finventory+"',wnumber = '"+wnumber+"',sname = '"+sname+"'  where fitem = '"+fitem+"'",function(data){
           console.log(data.rowsAffected)
			if (data.rowsAffected==1) {
				res.send("<script>alert('修改成功');location.href='/admin/flower'</script>");
			}else{
				res.send("<script>alert('修改失败');history.go(-1)</script>");
			}
		
	});
		
	}else{
		// // sql语句
		// sql = `update admin set status = ${status} where id = ${id}`;
	}

	// 执行sql语句


});


// 无刷新删除数据
router.get("/ajax_del",function(req,res,next){
	// 接受地址栏数据

	let id = req.query.id;

	// 删除数据

	mssql(`delete from flower where fitem = ${id}`,function(data){
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