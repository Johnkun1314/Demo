// 导入express
const express = require("express");

// 实例化router
const router = express.Router();

// 导入数据库相关内容
const mssql = require("../../config/db.js");

// 分类查看页面
router.get("/",function(req,res,next){

	// 从数据库中查询相关数据

	mssql.sql("select * from newstype order by sort desc",function(err,data){
		if (err) {
			return "";
		}else{
			// 加载页面
			res.render("admin/type/index.html",{data:data});
		}
	});
	
});

// 分类的添加页面
router.get("/add",function(req,res,next){
	// 加载添加页面
	res.render("admin/type/add.html");
});

// 分类的添加操作
router.post("/add",function(req,res,next){
	// 接收参数
	let {name,keywords,description,sort} = req.body;

	// 将数据插入到数据库中
	mssql.sql("insert into newstype(name,keywords,description,sort) value(?,?,?,?)",[name,keywords,description,sort],function(err,data){
		// 判断是否错误
		if (err) {
			return "";
		}else{
			// 判断是否执行成功
			if (data.affectedRows==1) {
				res.send("<script>alert('添加成功');location.href='/admin/type'</script>");
			}else{
				res.send("<script>alert('添加失败');history.go(-1)</script>");
			}
		}

	})

});

// 分类的修改页面

router.get("/edit",function(req,res,next){
	res.send("分类修改页面");
});

module.exports = router;
