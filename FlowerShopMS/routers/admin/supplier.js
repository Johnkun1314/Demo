let express = require("express");

let router = new express.Router();

const mssql = require("../../config/db.js");

const crypto = require('crypto');
// 导入moment模块
const moment = require("moment");

const page = require("../../common/page.js");
// 供应商管理首页
router.get('/',function(req,res,next){
	// 获取地址栏数据 req.query
	// 获取表单数据 req.body
	let p = req.query.p ? req.query.p :1;
	let search = req.query.search ? req.query.search :"";
	let size=5;

	// 从数据库中查询数据

	mssql("select count(*) as tot from supplier where sname like '%"+search+"%'",function(data){

		// 获取总数据
		let tot = data.recordset[0].tot;
		let fpage = page(tot,p,size);

	mssql("select top "+size+" * from supplier where sname not in (select top "+fpage.start+" sname from supplier) and sname like '%"+search+"%'",function(data){
            
            //  data.recordset.forEach(item=>{
			//  	item.time = moment().format("YYYY-MM-DD HH:mm:ss");
			//  });

			res.render("admin/supplier/index.html",
				{
					data:data.recordset,
					show:fpage.show,
					search:search
				}
			);
	});

});
});

// 供应商管理添加页面
router.get('/add',function(req,res,next){
	// res.send("供应商管理添加页面");
	// 加载页面
    res.render("admin/supplier/add.html");
});
// 供应商的添加功能
router.post("/add",function(req,res,next){
    // 接受数据

	let {sname,sphone} = req.body;
	if(sname&&sphone){

        mssql("select * from supplier where sname ='"+sname+"'",function(data){
            console.log('3')
            if (data.rowsAffected==1) {
                res.send("<script>alert('添加失败,供应商已存在');history.go(-1)</script>");
            }else{
             // sql语句
               mssql("insert into supplier values('"+sname+"','"+sphone+"')",function(data){
                  console.log(data.rowsAffected)
               if (data.rowsAffected==1) {
                   res.send("<script>alert('添加成功');location.href='/admin/supplier'</script>");
                      }else{
                          res.send("<script>alert('添加失败');history.go(-1)</script>");
                   }
                            
              });

              
            }
        })
    }
});



// 供应商管理修改页面
router.get('/edit',function(req,res,next){

	// 接受数据的ID

	let id = req.query.id;

	// 查询对应数据
	mssql("select * from supplier where sname = "+id,function(data){
			// 加载修改页面
			res.render("admin/supplier/edit.html",{data:data.recordset[0]});
		
	})	

});

// 供应商数据修改功能
router.post("/edit",function(req,res,next){

	// 接受表单提交的数据
	let {sname,fname,fmoney,finventory,wnumber,sname} = req.body;
	

	if (sname!='') {		
		// // 密码加密
		// let md5 = crypto.createHash('md5');
		// password = md5.update(password).digest('hex');
		// sql语句

		mssql("update supplier set fname = '"+fname+"',fmoney = '"+fmoney+"',finventory = '"+finventory+"',wnumber = '"+wnumber+"',sname = '"+sname+"'  where sname = '"+sname+"'",function(data){
           console.log(data.rowsAffected)
			if (data.rowsAffected==1) {
				res.send("<script>alert('修改成功');location.href='/admin/supplier'</script>");
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

	mssql(`delete from supplier where sname = ${id}`,function(data){
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