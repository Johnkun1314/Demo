let express = require("express");

let router = new express.Router();

const mssql = require("../../config/db.js");

const crypto = require('crypto');
// 导入moment模块
const moment = require("moment");

const page = require("../../common/page.js");
// 员工管理首页
router.get('/',function(req,res,next){
	// 获取地址栏数据 req.query
	// 获取表单数据 req.body
	let p = req.query.p ? req.query.p :1;
	let search = req.query.search ? req.query.search :"";
	let size=5;

	// 从数据库中查询数据

	mssql("select count(*) as tot from employee where enumber like '%"+search+"%'",function(data){

		// 获取总数据
		let tot = data.recordset[0].tot;
		let fpage = page(tot,p,size);

	mssql("select top "+size+" employee.enumber,employee.ename,employee.eage,employee.esex,employee.epost,employee.einyear,payroll.pmoney from payroll , employee where employee.enumber not in (select top "+fpage.start+" employee.enumber from employee) and employee.enumber like '%"+search+"%' and payroll.enumber=employee.enumber",function(data){
 //  data.recordset.forEach(item=>{
			//  	item.time = moment().format("YYYY-MM-DD HH:mm:ss");
			//  });

			res.render("admin/employee/index.html",
				{
					data:data.recordset,
					show:fpage.show,
					search:search
				}
			);
	});

});
});

// 员工管理添加页面
router.get('/add',function(req,res,next){
	// res.send("员工管理添加页面");
	// 加载页面
	res.render("admin/employee/add.html");
});
// 员工的添加功能
router.post("/add",function(req,res,next){
	// 接受数据
	//res.send("<script>alert('该账户名已经注册，请重新输入');history.go(-1)</script>");
	let {enumber,ename,esex,eage,epost,einyear} = req.body;
	let count;
	let pmoney;
	if(enumber&&ename&&esex&&eage&&epost&&einyear) {		
		// // 密码加密
		// let md5 = crypto.createHash('md5');
		// password = md5.update(password).digest('hex');
		// sql语句
		if(epost = '搬运工'){
			pmoney = '8000';
		}else if(epost ='管理员'){
			pmoney = '7000'
		}else{
			pmoney = '7500';
		}
		mssql("select count(*) as count from payroll",function(data1){
			   count =100000 + parseInt(data1.recordset[0].count)+1;
			   count = count.toString();
			   console.log(count)
		})

		mssql("insert into employee values('"+enumber+"','"+ename+"','"+esex+"','"+eage+"','"+epost+"','"+einyear+"')",function(data){
	
			console.log(data.rowsAffected)
			if (data.rowsAffected[0]==1) {

				mssql("insert into payroll values('"+count+"','"+enumber+"','"+pmoney+"')",function(data2){
					res.send("<script>alert('添加成功');location.href='/admin/employee'</script>");
					
				})
					
				
			}else{
				res.send("<script>alert('添加失败');history.go(-1)</script>");
			}
		
	});
		
	}else{
		// // sql语句
		// sql = `update admin set status = ${status} where id = ${id}`;
	}


});



// 员工管理修改页面
router.get('/edit',function(req,res,next){

	// 接受数据的ID

	let id = req.query.id;

	// 查询对应数据
	mssql("select * from employee where enumber = "+id,function(data){
			// 加载修改页面
			res.render("admin/employee/edit.html",{data:data.recordset[0]});
		
	})	

});

// 员工数据修改功能
router.post("/edit",function(req,res,next){

	// 接受表单提交的数据
	let {enumber,ename,esex,eage,epost,einyear} = req.body;
	

	if (enumber!='') {		
		// // 密码加密
		// let md5 = crypto.createHash('md5');
		// password = md5.update(password).digest('hex');
		// sql语句

		mssql("update employee set ename = '"+ename+"',esex = '"+esex+"',eage = '"+eage+"',epost = '"+epost+"',einyear = '"+einyear+"'  where enumber = '"+enumber+"'",function(data){
           console.log(data.rowsAffected)
			if (data.rowsAffected[1]==1) {
				res.send("<script>alert('修改成功');location.href='/admin/employee'</script>");
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
     console.log('del')
	// 删除数据

	mssql(`delete from employee where enumber = ${id}`,function(data){

			// 判断是否执行成功
			if (data.rowsAffected[1]==1) {		
					res.send("1");	
			
			}else{
				console.log('del3')
				res.send("0");
			}
		
	});
})

module.exports = router;