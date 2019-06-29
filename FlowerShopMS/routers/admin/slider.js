let express = require("express");

let router = new express.Router();

const path = require('path');

// 设置文件上传
const multer = require("multer");

const upload = multer({dest:"tmp/"});

// 导入fs模块

const fs = require("fs");

// 导入mssql模块

const mssql = require("../../config/db.js");

const uploads = require("../../common/uploads.js");

// 轮播图管理路由

// 首页
router.get("/",function(req,res,next){
	// 查找轮播图中的数据

	mssql.sql("select * from banner order by sort desc",function(err,data){
		if (err) {
			return "";
		}else{
			// 加载页面
			res.render("admin/slider/index.html",{data:data});
		}
	});

});

// 添加页
router.get("/add",function(req,res,next){
	// 加载页面
	res.render("admin/slider/add.html");
});

// 处理添加功能
router.post("/add",upload.single("img"),function(req,res,next){
	// 获取表单的数据
	let {name,url,sort} = req.body;
	// 接受文件相关的数据
	let imgRes = req.file;

	// 可以获取文件的临时目录
	let tmpPath = imgRes.path;

	// 文件上传的执行目录
	let ext = path.extname(imgRes.originalname);
	let newName = ""+(new Date().getTime())+Math.round(Math.random()*10000)+ext;
	let newPath = "/upload/slider/"+newName;

	// 进行文件拷贝

	let fileData = fs.readFileSync(tmpPath);
	fs.writeFileSync(__dirname+"/../../"+newPath,fileData);

	// 将数据插入到数据库中
	mssql.sql("insert into banner(name,url,sort,img) value(?,?,?,?)",[name,url,sort,newPath],function(err,data){
		if (err) {
			return "";
		}else{
			if (data.affectedRows==1) {
				res.send("<script>alert('添加成功');location.href='/admin/slider'</script>");

			}else{
				res.send("<script>alert('添加失败');history.go(-1)</script>");
			}

		}
	})


	

});

// 修改页
router.get("/edit",function(req,res,next){
	// 获取修改数据的ID
	let id = req.query.id;
	// 查询对应的数据
	mssql.sql("select * from banner where id = "+id,function(err,data){
		if (err) {
			return "";
		}else{
			// 加载页面
			res.render("admin/slider/edit.html",{data:data[0]});
		}
	});
});



// 修改功能
router.post("/edit",upload.single("img"),function(req,res,next){
	// 接受图片信息
	let imgRes = req.file;
	// 接受表单数据
	let {id,name,url,sort,oldimg} = req.body;

	// 判断图片资源是否存在

	let sql="";
	let arr=[];
	if (imgRes) {
		// 先上传图片

		let img = uploads(imgRes,"slider");

		sql = "update banner set name = ?,url = ?,sort = ?,img = ? where id = ?";
		arr = [name,url,sort,img,id];
	}else{
		sql = "update banner set name = ?,url = ?,sort = ? where id = ?";
		arr = [name,url,sort,id];
	}

	// 发送sql语句
	mssql.sql(sql,arr,function(err,data){
		if (err) {
			return "";
		}else{
			if (data.affectedRows==1) {
				// 判断是否修改了图片
				if (imgRes) {
					if (fs.existsSync(__dirname+"/../../"+oldimg)) {
						fs.unlinkSync(__dirname+"/../../"+oldimg);
					};
				};
				res.send("<script>alert('修改成功');location.href='/admin/slider'</script>");
			}else{
				res.send("<script>alert('修改失败');history.go(-1)</script>");
			}
		}
	});
});


// 删除功能

router.get("/ajax_del",function(req,res,next){
	// 接受用户删除的数据

	let {id,img} = req.sql;

	// 删除数据

	mssql.sql("delete from banner where id = "+id,function(err,data){
		if (err) {
			return "";
		}else{
			// 判断是否删除成功
			if (data.affectedRows==1) {
				// 删除对应的图片

				if (fs.existsSync(__dirname+"/../../"+img)) {
					fs.unlinkSync(__dirname+"/../../"+img);
				};
				res.send("1");
			}else{
				res.send("0");
			}
		}
	});

});

// 无刷新的修改排序

router.get("/ajax_sort",function(req,res,next){
	// 接受数据
	let {id,sort} = req.sql;

	// 数据的修改
	mssql.sql("update banner set sort = ? where id = ?",[sort,id],function(err,data){
		// 判断是否执行成功
		if (err) {
			return "";
		}else{
			if (data.affectedRows==1) {
				res.send("1");
			}else{
				res.send("0");	
			}
		}
	});
});
module.exports=router;


