let express = require("express");

let router = new express.Router();

const mssql = require("../../config/db.js");

const crypto = require('crypto');
// 导入moment模块
const moment = require("moment");

const page = require("../../common/page.js");
// 仓库管理首页
router.get('/',function(req,res,next){
	// 获取地址栏数据 req.query
	// 获取表单数据 req.body
	let p = req.query.p ? req.query.p :1;
	let search = req.query.search ? req.query.search :"";
	let size=5;

	// 从数据库中查询数据

	mssql("select count(*) as tot from warehourse where wnumber like '%"+search+"%'",function(data){

		// 获取总数据
		let tot = data.recordset[0].tot;
		let fpage = page(tot,p,size);

	mssql("select top "+size+" warehourse.wnumber,employee.ename from warehourse , employee where warehourse.wnumber not in (select top "+fpage.start+" warehourse.wnumber from warehourse) and warehourse.wnumber like '%"+search+"%' and warehourse.enumber=employee.enumber",function(data){
			res.render("admin/warehourse/index.html",
				{
					data:data.recordset,
					show:fpage.show,
                    search:search,
				}
            );
    });
    

});
});

// 仓库管理添加页面
router.get('/add',function(req,res,next){
	// res.send("仓库管理添加页面");
	// 加载页面
	res.render("admin/warehourse/add.html");
});
// 仓库的添加功能
router.post("/add",function(req,res,next){
	// 接受数据
   
    let {wnumber,enumber} = req.body;
    console.log(req.body)
    if(wnumber&&enumber){
       
        mssql("select * from warehourse where wnumber ="+wnumber,function(data){
           
            if (data.rowsAffected==1) {
                res.send("<script>alert('添加失败,该仓库编号已存在');history.go(-1)</script>");
            }else{
                mssql("select * from employee where epost = '管理员' and enumber ="+enumber,function(data){
                  
                    if (data.rowsAffected==1) {		
                            // sql语句
                            console.log('5')
                            mssql("insert into warehourse values('"+wnumber+"','"+enumber+"')",function(data){
                                console.log('6')
                               console.log(data.rowsAffected)
                                if (data.rowsAffected==1) {
                                    res.send("<script>alert('添加成功');location.href='/admin/warehourse'</script>");
                                }else{
                                    res.send("<script>alert('添加失败');history.go(-1)</script>");
                                }
                        });
                            
                    }else{
                        res.send("<script>alert('添加失败!该员工不是管理员!');history.go(-1)</script>");
                    }
                })
            }
        })
    }
});



// 仓库管理修改页面
router.get('/edit',function(req,res,next){

	// 接受数据的ID

	let id = req.query.id;

	// 查询对应数据
	mssql("select * from warehourse where wnumber = "+id,function(data){
			// 加载修改页面
			res.render("admin/warehourse/edit.html",{data:data.recordset[0]});
		
	})	

});

// 仓库数据修改功能
router.post("/edit",function(req,res,next){

	// 接受表单提交的数据
	let {wnumber,enumber} = req.body;

	if (wnumber&&enumber) {	
        	
        mssql("select * from employee where enumber = "+enumber+" and epost = '管理员'",function(data){
         
            if (data.rowsAffected==1) {
                mssql("update warehourse set  enumber = '"+enumber+"'  where wnumber = '"+wnumber+"'",function(data){
                    console.log(data.rowsAffected)
                     if (data.rowsAffected==1) {
                         res.send("<script>alert('修改成功');location.href='/admin/warehourse'</script>");
                     }else{
                         res.send("<script>alert('修改失败');history.go(-1)</script>");
                     } 
             });
			}else{
				res.send("<script>alert('修改失败,改员工不是管理员或者改员工不存在!');history.go(-1)</script>");
			}
        })
		
	}else{

	}

});


// 无刷新删除数据
router.get("/ajax_del",function(req,res,next){
	// 接受地址栏数据

	let id = req.query.id;

	// 删除数据

	mssql(`delete from warehourse where wnumber = ${id}`,function(data){
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