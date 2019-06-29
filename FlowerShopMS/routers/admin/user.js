let express = require("express");

let router = new express.Router();

// 导入数据库模块

const mssql = require("../../config/db.js");

// 导入时间格式化

const moment = require("moment");

// 导入分页方法

const page = require("../../common/page.js");

// 会员管理首页
router.get('/',function(req,res,next){

	// res.send("会员管理首页");
	// 如何开发分页
	// 第一页 0,5
	// 第二页 5,5
	// 第三页 10,5
	// 第四页 15,5
	// 获取页码
	let p = req.query.p ? req.query.p :1;

	// 接受检索的数据

	let search = req.query.search ? req.query.search :"";
	// 默认每页展示数据
	let size=5;

	// 计算总数据
	mssql("select count(*) as tot from customers where croot like '%"+search+"%'",function(data){

			// 获取总数据
			let tot = data.recordset[0].tot;
			let fpage = page(tot,p,size);
			// 查看数据
			mssql("select top "+size+" * from customers where croot not in (select top "+fpage.start+" croot from customers) and croot like '%"+search+"%'",function(data){

					// 将时间格式化
					data.recordset.forEach(item=>{
						item.time = moment().format("YYYY-MM-DD HH:mm:ss");
					})
					// 加载页面
					res.render(
						"admin/user/index.html",
						{
							data:data.recordset,
							show:fpage.show,
							search:search
						}
					);
			
			});
		
	});

	

});


module.exports = router;