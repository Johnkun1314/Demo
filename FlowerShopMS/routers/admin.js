// 导入express
let express = require("express");

// 实例化
let router = express.Router();
const crypto = require('crypto');
const mssql = require("../config/db.js");
// 监听用户的访问地址

router.use(function(req,res,next){
	// 判断url地址
	// 是否可以直接进行访问
	if (req.url != "/login" && req.url != "/check") {
		// 判断是否登录
	 if (req.session.YzmMessageIsAdmin && req.session.YzmMessageUsername) {
		//	if (1) {
			next();
		}else{
			res.send("<script>alert('请登录');location.href='/admin/login'</script>");
		}
	}else{
		next();
	}
});
// 登录页面
router.get("/login",function(req,res,next){
	res.render("admin/login.html");
});

// 登录处理操作
router.post("/check",function(req,res,next){
	// 接受数据
	let {username,password} = req.body;
	username+=""
	// 判断
	if (username) {
		if (password) {

			// 判断数据库中是否存在该用户
			mssql("select * from admin where aroot = "+username+" and apassword = "+password,function(data){
				var length = parseInt(data.rowsAffected)
				
					if (length) {
						req.session.YzmMessageIsAdmin = true;
						req.session.YzmMessageUsername = data.recordset[0].aroot;

						res.send("<script>alert('登录成功');location.href='/admin'</script>");

					}else{
						res.send("<script>alert('登录失败');location.href='/admin/login'</script>");
					}
			});
		}else{
			res.send("<script>alert('请登录');location.href='/admin/login'</script>");
		}
	}else{
		res.send("<script>alert('请登录');location.href='/admin/login'</script>");
	}
})

// 退出路由
router.get("/logout",function(req,res,next){
	req.session.YzmMessageIsAdmin = false;
	req.session.YzmMessageUsername = "";
	res.send("<script>alert('退出成功');location.href='/admin/login'</script>");

});
// 后台首页路由

router.get("/",function(req,res,next){

	// 加载对应后台页面
	res.render("admin/index");
});

// 后台欢迎页面

router.get("/welcome",function(req,res,next){
	// 加载对应欢迎页面
	
	res.render("admin/welcome");
});

// 管理员管理
let adminRouter = require('./admin/admin');
router.use('/admin',adminRouter);

// 客户管理
let userRouter = require('./admin/user');
router.use('/user',userRouter);

// 员工管理
let employeeRouter = require('./admin/employee');
router.use('/employee',employeeRouter);

// 鲜花管理
let flowerRouter = require('./admin/flower');
router.use('/flower',flowerRouter);

// 仓库管理
let warehourseRouter = require('./admin/warehourse');
router.use('/warehourse',warehourseRouter);

// 供应商管理
let supplierRouter = require('./admin/supplier');
router.use('/supplier',supplierRouter);

// 订单管理管理
let orderRouter = require('./admin/order');
router.use('/order',orderRouter);



// 轮播图管理
let sliderRouter = require('./admin/slider');
router.use('/slider',sliderRouter);

// 新闻分类管理
let typeRouter = require('./admin/newtype.js');
router.use('/type',typeRouter);

// 新闻管理
let newsRouter = require('./admin/news.js');
router.use('/news',newsRouter);

// 评论管理
let commentRouter = require('./admin/comment.js');
router.use('/comment',commentRouter);

// 系统管理
let systemRouter = require('./admin/system');
router.use('/system',systemRouter);


module.exports = router;