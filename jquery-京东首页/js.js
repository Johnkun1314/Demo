var quickcutKey = false;
//jqueery设置样式
$('body').css({
    'background-color':'#eee'
})
$('.nav-head').css({
    'height':'30px',
    'width':'100%',
    'background-color':'#ddd',
    'position':'absolute',
})
$('.nav-head-wrapter').css({
    'height':'30px',
     'width':'1130px',
     'margin':'auto'
})
$('.nav-head a').css({
    'text-decoration':'none',
     'color':'#666',
     'line-height':'30px',
     'font-size':'12px',
      'vertical-align':'middle'
});
$('.location').css({
    'float':'left',
    'position':'relative',
    'left':'170px'
})
$('.ui-icon-location').css({
    'background-image':"url('img/loction.png')",
    'background-size':'100% 100%',
     'width':'20px',
     'height':'20px',
    
     'display':'inline-block',
     'vertical-align':'middle'
})
$('.nav-head-content').css({
    'float':'right'
})

$('.nav-head-content li').css({
    'float':'left',
    'margin':'auto 10px',
    'font-size':'12px',
    'color':'#666',
    'line-height':'30px',

})
$('.nav-head-content>span').css({
    'float':'left',
    'line-height':'30px',
    'color':'#999'
})

$('.myJD').css({
    'position':'absolute',
     'width':'275px',
     'height':'160px', 
     'background-color':'#fff',
     'border':'1px solid #aaa',
     'top':'30px',
     'z-index':'999',
     'display':'none'
})


$('.myJD-top ul').css({
    'float':'left',
    'position':'relative'
})
$('.myJD-bottom ul').css({
    'float':'left',    
    'position':'relative'
})
$('.myJD .myJD-left').css({
    'left':'20px'
})
$('.myJD .myJD-bottom .myJD-right').css({
    'left':'81px',
})
$('.myJD .myJD-top .myJD-right').css({
    'left':'70px',
})
$('.purchase').css({
    'z-index':'999',
    'position':'absolute',
    'background-color':'#fff',
    'border':'1px solid #aaa',
    'width':'170px',
     'height':'60px',
     'top':'30px',
     'display':'none'
})
$('.purchase>ul').css({
    'position':'relative',
    'float':'left'
})
$('.purchase .purchase-left').css({
    'left':'20px'
})
$('.purchase .purchase-right').css({
    'left':'50px'
})
$('.service').css({
    'z-index':'999',
    'position':'absolute',
     'width':'180px',
     'height':'250px', 
     'background-color':'#fff',
     'border':'1px solid #aaa',
     'top':'30px',
     'display':'none'
})
$('.service ul').css({
    'float':'left',
    'position':'relative'
})
$('.service .service-left').css({
    'left':'20px',
    'top':'5px'
})
$('.service .service-right').css({
    'left':'60px',
    'top':'5px'
})
$('.service .service-title').css({
    'font-size':'13px',
    'color':'#666',
    'position':'relative',
    'left':'20px',
    'top':'5px'
})

$('.navigitor').css({
    'z-index':'999',
    'position':'absolute',
    'width':'1130px',
    'height':'200px',
    'border':'1px solid #aaa',
    'background-color':'#fff',
    'top':'30px',

    'display':'none'
})
$('.navigitor>div ').css({
    'float':'left',
})
$('.navigitor-line').css({
    'position':'relative', 
    'border':'1px solid #aaa',
     'width':'0px',
     'height':'190px',
     'border-left-color':"transparent",
     'border-top-color':"transparent",
     'border-bottom-color':"transparent",
     'top':'5px'
})
$('.navigitor ul').css({
    'position':"relative",
    'float':'left', 
    'width':'80px',
    'left':'20px',
    'top':'15px'
})
$('.navigitor-left').css({
   'width':'346px',
})
$('.navigitor-left-center').css({
      'width':'259px',
 })
 $('.navigitor-center-right').css({
    'width':'259px',
 })
 $('.navigitor-right').css({
    'width':'259px',
 })

 $('.navigitor-title').css({
     'color':'#444',
     'font-size':'13px',
     'position':'relative',
     'top':'10px',
     'left':'20px'
 })
 $('.phoneJD').css({
    'z-index':'999',
     'position':'absolute',
     'top':'30px'
 })
 $('.phoneJD>img').css({
     'width':'200px',
     'position':'absolute',
     'display':'none'
 })
 $(".phoneJD-triangle").css({
     'position':'absolute',
     'top':'-10px',
     'display':'inline-block',
     'border':'5px solid #fff',
     'border-top-color':'transparent',
     'border-left-color':'transparent',
     'border-right-color':'transparent',
     'z-index':'9999',
     'display':'block',
     'left':$('.JDapk-wrapter').offset().left+20+'px'
 })
 $('.phoneJD-triangle>div').css({
     'width':'0px',
     'height':'0px'
 })

 $('.nav-left').css({
     'position':'absolute',
     'left':$('.nav-head .location').offset().left-200+'px',
     'background-color':'#fff',
     'width':'190px',
     'height':'650px',
     'z-index':'-1',
     'box-shadow':'0px 0px 5px #aaa',
     
 })
 $('.nav-left-top').css({
     'position':'relative',
     'background-image':'url("img/JDlogo.png")',
     'background-size':'180px auto',
     'width':"190px",
     'height':'160px'
 })
 $('.nav-left-line').css({
     'position':'relative',    
     'border':'1px solid #eee',
 })
 $('.nav-left-bottom').css({
    'position':'relative',
    'width':"190px",
    'height':'zuto',

 })
 $('.nav-left-bottom>ul>li').css({
     'line-height':'27px',
     'position':'relative',
     'left':'20px',
     'top':'10px',  
 })
 $('.nav-left-bottom-showmore').css({
     'width':'950px',
     'height':'487px',
     'background-color':'transparent',
     'position':'absolute',
      'left':$('.nav-left-bottom').offset().left+30+'px',
     'top':$('.nav-left-bottom').offset().top+'px',
     
 })
$('.nav-search').css({
    'position':'relative',
    'top':$('.nav-left-bottom').offset().top-110+'px',
    'left':$('.nav-left-bottom-showmore').offset().left+'px',
    'width':'950px',
    'height':'100px',
    
})
$('.nav-search-top').css({
    'position':'relative',
    'width':'750px',
    'height':'70px',
    'margin':'0 auto',
    
})
$('.nav-search-top-left').css({
    'position':'absolute',
    'width':'550px',
    'height':'50px'
})
$('.nav-search-top-right').css({
    'position':'absolute',
    'width':'200px',
    'height':'30px',
    'left':'580px',
    'background-color':'#fff',
    'border':'1px solid #ccc'
})
$('.search-top-left-bottom').css({
    'position':'absolute',
    'width':'550px',
    'height':'20px',
    'top':'50px'
})
$('.nav-search-bottom').css({
    'position':'relative',
    
    'width':'750px',
    'height':'28px',
    'left':''
})
$('.searchFrame').css({
    'display':'inline',
    'float':'left',
    'width':'510px',
    'height':'30px',
    'border':'1px solid #ccc',
    'background-color':'#fff',

})
$('.search-input').css({
    'width':'480px',
    'height':'30px',
    'float':'left',
    'display':'inline',
    'line-height':'30px',
    'border':'none',
    'text-indent':'5px',
    'color':'#aaa'
}).focus(function(){
    $(this).css({
        'border':'none'
    })
})
$('.search-input-camera').css({
    'width':'30px',
    'height':'30px',
    'float':'right',
    'display':'inline',
    'background-color':'#fff',
    'border':'none',
    'background-image':'url("img/camera.png")',
    'background-size':'60% 60%',
    'background-repeat':'no-repeat',
    'background-position':'50% 50%'
})
$('.search-input-searchIcon').css({
    'position':'absolute',
    'right':'0',
    'border':'none',
    'display':'block',
    'width':'40px',
    'height':'32px',
    'background-color':'#f00',
    'background-image':'url("img/search.png")',
    'background-size':'70% 70%',
    'background-repeat':'no-repeat',
    'background-position':'30% 30%'
})

$('.search-top-left-bottom').css({
    'width':'510px',
    'height':'20px',
    'position':'absolute',
    'top':$('.search-top-left-top .searchFrame').offset().top-20+'px'
})
$('.search-top-left-bottom>ul>li').css({
    'float':'left',
    'margin':'1px 9px'
})
$('.search-top-left-bottom>ul>li>a').css({
    'color':'#888',
    'font-size':'10px',
    'line-height':'20px',
})
$('.nav-search-top-right>div').css({
    'position':'relative',
    'margin':'0 auto',
    'width':'120px',
    'height':'30px',
})
$('.shopIcon').css({
    'background-image':'url("img/shopicon.png")',
    'background-size':'60% 60%',
    'background-repeat':'no-repeat',
    'background-position':'40% 40%',
    'width':'30px',
    'height':'30px',
    'display':'inline-block',
    'vertical-align':'middle'
})
$('.myshop').css({
    'font-size':'12px'
})
$('.shopcount').css({
    'position':'relative',
    'background-color':'#f00',
    'display':'inline-block',
    'width':'15px',
    'height':'15px',
    'border-radius':'100%',
    'line-height':'15px',
    'text-align':'center',
    'color':'#fff',
    'font-size':'12px',
    'top':$('.nav-search-top-right>div').offset().top-55+'px'
})

$('.nav-search-top-right-showmore').css({
    'width':'300px',
    'height':'70px',
    'background-color':'#fff',
    'position':'relative',
    'z-index':'999',
    'display':"none"
})
$('.nav-search-top-right-showmore>div').css({
   
     'width':'280px',
     'height':'70px',
    'position':'relative',
    'margin':'0 auto',
    
})
$('.nav-search-top-right-showmore>div>span').css({
    'line-height':'70px',
    'font-size':'12px',
    'color':'#999'
})
$('.search-top-right-showmore-icon').css({
    'width':'70px',
    'height':'70px',
    'display':'inline-block',
    'background-color':'#fff',
    'background-image':'url("img/freeshop.png")',
    'background-size':'70% 70%',
    'background-repeat':'no-repeat',
    'background-position':'10px 10px',
    'vertical-align':'middle'
})

$('.nav-search-bottom>ul>li').css({
   'float':'left',
   'margin':'0 12px'
})
$('.nav-search-bottom>ul>span').css({
    'float':'left'
 })
 $('.nav-search-bottom>ul>li>a').css({
    'line-height':'30px'
 })
 $('.nav-search-bottom>ul>span').css({
    'line-height':'30px',
    'color':'#aaa'
 })

 $('.menu-pic').css({
     'position':'absolute',
     'width':'1000px',
     'height':'475px',
     'top':$('.nav-left-bottom').offset().top+10+'px',
    'left':$('.nav-left-bottom-showmore').offset().left+'px',
   
 })
$('.menu-pic-left').css({
    'position':'absolute',
     'width':'580px',
     'height':'475px',
     
})
$('.pic-to-last').css({
    'position':'absolute',
    'width':'20px',
    'height':'35px',
    'background-color':'#bbb',
    'line-height':'35px',
    'text-align':'center',
    'top':'45%',
    'z-index':'99'
    
})
$('.pic-to-next').css({
    'position':'absolute',
    'width':'20px',
    'height':'35px',
    'background-color':'#bbb',
    'line-height':'35px',
    'text-align':'center',
    'right':'0',
    'top':'45%',
    'z-index':'99'
})
$('.indicate').css({
    'position':'absolute',
    'left':"0px",
    'bottom':'20px',
    'left':'50px',
    'z-index':'99'
})
$('.indicate>li').css({
    'float':'left',
    'border':'3px solid #bbb',
    'border-radius':'50%',
    'width':'5px',
    'height':'5px',
    'background-color':'transparent',
    'margin':'0 3px'
})
$('.slides').css({
    'width':'580px',
    'height':'475px',
    })
$('.slides').css({
        'width':'580px',
        'height':'475px',
    })
$('.slides>div>img').css({
    'width':'580px',
    'height':'475px',
})
$('.slides>div').css({
    'width':'580px',
    'height':'475px',
    'position':'absolute',
    'display':'none'
})
$('.slides-select').css({
    'display':'block'
})
$('.indicate-select').css({
    'border':'3px solid #fff',
    'background-color':'#fff',
    'box-shadow':'0 0 5px #000'
})
$('.menu-pic-center').css({
    'position':'absolute',
     'width':'180px',
     'height':'475px',
     'left':'590px'
})
$('.menu-pic-center>div').css({
    'cursor':'pointer',
    'width':'180px',
    'height':'150px',
    'background-color':'#fff'
})
$('.menu-pic-center').children().eq(0).css({
    'margin-bottom':'12.5px',
    'background-image':'url("img/menu-center-top.png")',
    'background-size':'100% 100%'    
})
  $('.menu-pic-center').children().eq(1).css({
    'margin-bottom':'12.5px',
    'background-image':'url("img/menu-center-middle.png")',
    'background-size':'100% 100%'
})
$('.menu-pic-center').children().eq(2).css({
    'margin-bottom':'12.5px',
    'background-image':'url("img/menu-center-bottom.png")',
    'background-size':'100% 100%'    
})

$('.menu-pic-right').css({
    'position':'absolute',
     'width':'190px',
     'height':'485px',
     
     'left':'780px',
     'overflow':'hidden'
})
$('.menu-pic-right').children().eq(0).css({
     'position':'absolute',
     'width':'190px',
     'height':'150px',
     'background-color':'#fff'
})
$('.head-pic').css({
    'position':'absolute',
    'left':'50%',
    'margin-left':'-32.5px',
    'top':'-10px',
    'background-image':'url("img/no_login.jpg")',
    'background-size':'100% 100%',
    'width':'65px',
    'height':'70px',
    'border-radius':'50%'
})
$('.wel-option').css({
    'position':'relative',
    'margin':'0 auto',
    'top':'60px',
    'width':'150px',
    'text-align':'center',
    'color':'#999',
    'font-size':'12px'
})
$('.user-verify').css({
    'position':'relative',
    'margin':'0 auto',
    'top':'60px',
    'width':'150px',
    'text-align':'center',
    'color':'#999',
    'font-size':'12px',
})
$('.user-verify>div').css({
    'position':'relative',
    'margin':'0 auto',
    'top':'0px',
    'width':'30px',
    'text-align':'center',
    'color':'#999',
    'font-size':'12px',
    'display':'inline-block',
    'font-weight':'900'
})
$('.user-profit').css({
    'position':'relative',
    'margin':'0 auto',
    'top':'60px',
    'text-align':'center',
    'color':'#999',
    'font-size':'12px',
})
$('.user-profit>div').css({
    'position':'relative',
    'margin':'0 auto',
    'top':'10px',
    'width':'80px',
    'height':'26px',
    'line-height':'26px',
    'text-align':'center',
    'color':'#999',
    'font-size':'12px',
    'display':'inline-block',
     'border-radius':"20px 20px "
})

$('.user-profit .user-profit-new').css({
    'box-shadow':'0 0 5px #ccc'
})
$('.user-profit .user-mumber').css({
    'box-shadow':'0 0 5px #cccs',
    'background-color':'#363634',
    'color':'#e5d790'
})
  $('.menu-pic-right').children().eq(1).css({
    'position':'absolute',
     'width':'190px',
     'height':'124px',
    'background-color':'#fff',
    'top':'150px'
})
$('.right-news-title').css({
    'position':'relative',
    'width':'100%',
})
$('.right-news-title').children().eq(0).css({
    'position':'relative',
    'color':'#000',
    'font-size':'14px',
    'font-weight':'550',
    'display':'inline-block',
    'left':'20px'
    
})
$('.right-news-title').children().eq(1).css({
    'position':'relative',
    'color':'#aaa',
    'font-size':'12px',
    'display':'inline-block',
    'float':'right',
    'right':'10px'
})
$('.right-news-content').css({
    'position':'relative',
    'width':'100%',
    'margin-top':'10px'
})
$('.right-news-content span').css({
    'position':'relative',
    'display':'inline-block',
    'background-color':"#e47f7f",
    'color':'#fff',
    'width':'30px',
    'height':'15px',
    'font-size':'12px',
    'line-height':'15px',
    'text-align':'center',
    'cursor':'pointer'
})
$('.right-news-content a').css({
    'color':'#999',
    'font-size':'12px',
})
$('.right-news-content>div').css({
    'margin-left':'20px',
})
$('.right-line').css({
    'position':'relative',
    'top':'15px',
    'border':'1px solid #bbb',
    'border-left':'none',
    'border-right':"none",
    'border-top':'none' ,
    'width':'160px',
    'margin':'0 auto'
})
$('.menu-pic-right').children().eq(2).css({
    'position':'absolute',
    'width':'190px',
    'height':'200px',
    'background-color':'#fff',
    'top':'274px',
})
$('.pic-right-shortcut').css({
    'margin':'0 auto',
    'width':'100%'
})
$('.pic-right-shortcut>ul>li').css({
    'display':'inline-block',
     'margin':'0 1px',
    'color':'#bea68d',
    'cursor':'pointer'
})
$('.pic-right-shortcut>ul>li .short-icon').next().css({
    'font-size':'12px',
    'color':'#bea68d',
    'width':'40px',
    'text-align':'center'
})
$('.short-one').children().eq(0).children().eq(0).css({
    'width':'40px',
    'height':'40px',
   'background-image':'url("img/jd-charge.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%',
   'margin-top':'10px'
})
$('.short-one').children().eq(1).children().eq(0).css({
    'width':'40px',
    'height':'40px',
   'background-image':'url("img/jd-ticket-plan.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%'
})
$('.short-one').children().eq(2).children().eq(0).css({
    'width':'40px',
    'height':'40px',
   'background-image':'url("img/jd-hotel.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%'
})
$('.short-one').children().eq(3).children().eq(0).css({
    'width':'40px',
    'height':'40px',
   'background-image':'url("img/jd-game.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%'
})
$('.short-two').children().eq(0).children().eq(0).css({
   'width':'40px',
   'height':'40px',
   'background-image':'url("img/jd-purchase.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%'
})
$('.short-two').children().eq(1).children().eq(0).css({
    'width':'40px',
    'height':'40px',
   'background-image':'url("img/jd-card-gas.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%'
})
$('.short-two').children().eq(2).children().eq(0).css({
    'width':'40px',
    'height':'40px',
   'background-image':'url("img/jd-ticket-movie.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%'
})
$('.short-two').children().eq(3).children().eq(0).css({
    'width':'40px',
    'height':'40px',
   'background-image':'url("img/jd-ticket-train.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%'
})
$('.short-three').children().eq(0).children().eq(0).css({
    'width':'40px',
    'height':'40px',
   'background-image':'url("img/jd-crowdfunding.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%'
})
$('.short-three').children().eq(1).children().eq(0).css({
    'width':'40px',
    'height':'40px',
   'background-image':'url("img/jd-moneyArrange.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%'
})
$('.short-three').children().eq(2).children().eq(0).css({
    'width':'40px',
    'height':'40px',
   'background-image':'url("img/jd-card-gift.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%'
})
$('.short-three').children().eq(3).children().eq(0).css({
    'width':'40px',
    'height':'40px',
   'background-image':'url("img/jd-bar.png")',
   'background-size':'55% auto',
   'background-repeat':'no-repeat',
   'background-position':'50% 80%'
})

$('.tab-iframe').css({
    'width':'190px',
    'height':'200px',
    'background-color':'#fff',
    'position':'absolute',
    'top':'490px',
})


$('.tab-location').css({
    'width':'174px',
    'margin':'0 auto',
    'position':'relative'
})
$('.tab-location>li').css({
    'position':'relative',
    'top':'-10px',
    'width':'40px', 
    'height':'2px',
    'margin':'0 auto',
    'background-color':'#fff',
    'display':'inline-block'
})
$('.tab-close').css({
    'width':'174px',
    'margin':'0 auto',
    'position':'relative'
})
$('.tab-close>span').css({
    'position':'absolute',
    'right':'0px',
    'top':'-8px',
    'cursor':'pointer'    
})
$('.tab-nav').css({
    'width':'180px',
    'height':'14px',
    'line-height':'14px',
    'margin':'0 auto',
    'position':'relative',
    'text-align':'center',
    'top':'1px'
})
$('.tab-nav>li').css({
    'position':'relative',
    'width':'50px',
    'color':'#444',
    'font-size':'12px',
    'margin':'0 3px',
    'display':'inline-block',
})
$('.info').css({
    'width':'180px',
    'height':'50px',
    'line-height':'25px',
    'margin':'0 auto',
    'position':'relative',
    'text-align':'center',
    'top':'1px',
})
$('.info>p').css({
    'width':'180px',
})
$('.info>p>label').css({
    'width':'20px',
    'color':'#444',
    'font-size':'12px',
})
$('.info>p').children().eq(1).css({
    'width':'140px',
    'height':'20px',
    'color':'red',
    'font-size':'12px',
    'font-weight':'666',
    'text-indent':'8px',
    'border':'1px solid #ccc'
})

$('.info>p>select').css({
    'width':'142px',
    'height':'20px',
    'font-size':'12px',
    'line-height':'12px',
    'text-indent':'4px',
    'border':'1px solid #ccc'
})
$('.info>p>select').val($('.info>p>select').children().eq(4).val())
$('.pay-money').css({
    'color':'#f00',
    'font-size':'12px',
    'width':'170px',
    'margin':'5px auto'
}).text('￥98.0-100.0￥')
$('.quick-charge').css({
    'background-color':'#e40015',
    'width':"60px",
    'heoght':'20px',
    'font-size':'12px',
    'border-radius':'10px',
    'color':'#fff',
    'text-align':'center',
    'line-height':'18px',
    'margin':'10px auto 0 12px',
    'cursor':'pointer'
})
$('.ad').css({
    color:'blue',
    'font-size':'12px',
    'margin':'10px auto 0 12px',
    'cursor':'pointer'
}).hover(function(){
    $(this).css({
        'color':'#f00'
    })
},function(){
    $(this).css({
        'color':'blue'
    })
})



$('.font-color-red').css({
    'color':'#f00',   
}) 
//jquery设置交互
$('.nav-head-content li a').hover(function(){
    $(this).css({
        'color':'red'
    })
},function(){
    if( $( this ).attr('class') != 'font-color-red'){
        $(this).css({
            'color':"#666"
        })
    }
})
$('.myjd').hover(function(){
    $('.myjd-wrapter').css({
        'background-color':'#fff'
    })
    $('.myJD').css({
        'display':'block',
        'top':'30px',
        'left':$('.myjd').offset().left+'px'
    })
},function(){
    $('.myJD').css({
        'display':'none'
    });
    $('.myjd-wrapter').css({
        'background-color':'#ddd'
    })
})
$('.purchases').hover(function(){
    $('.purchase').css({
        'display':'block',
        'top':'30px',
        'left':$('.purchases').offset().left+'px'
    });
    
    $('.purchase-wrapter').css({
        'background-color':'#fff'
    })
},function(){
    $('.purchase').css({
        'display':'none'
    });
    $('.purchase-wrapter').css({
        'background-color':'#ddd'
    })
})
$('.service-wrapter').hover(function(){
    $('.service').css({
        'display':'block',
        'left':$('.service-wrapter').offset().left+'px'
    });
    
    $('.service-wrapter').css({
        'background-color':'#fff'
    })
},function(){
    $('.service').css({
        'display':'none'
    });
    $('.service-wrapter').css({
        'background-color':'#ddd'
    })
})
$('.navigitor-wrapter').hover(function(){
    $('.navigitor').css({
        'display':'block',
        'left':$('.nav-head-wrapter').offset().left+'px'
    });
    $('.navigitor-wrapter').css({
        'background-color':'#fff'
    })
},function(){
    $('.navigitor').css({
        'display':'none',
    });
    $('.navigitor-wrapter').css({
        'background-color':'#ddd'
    })
})
$('.JDapk-wrapter').hover(function(){
    $('.phoneJD img').css({
        'display':'block',
        'left':$('.JDapk-wrapter').offset().left+86-200+'px'
    })
},function(){
    $('.phoneJD img').css({
        'display':'none '
    })
})
$('.nav-search-top-right').hover(function(){
    $('.nav-search-top-right-showmore').css({
        'display':'block',
        'top':$('.nav-search-top-right').offset().top-22 +'px',
        'left':$('.nav-search-top-right').offset().left-558 +'px',
    })
},function(){
    $('.nav-search-top-right-showmore').css({
        'display':'none'
    })
})
$('.search-top-left-bottom>ul>li').hover(function(){
        $(this).children(":first").css({
            'color':'#f00'
        })
    
},function(){
    if( $(this).children(':first').attr('class')!='font-color-red' ){
        $(this).children(':first').css({
            'color':'#aaa'
        })
    }
})
$('.nav-search-bottom>ul>li').hover(function(){
    $(this).children(':first').css({
        'color':'#f00'
    })
},function(){
     $(this).children(':first').css({
         'color':'#444'
     })
})
$('.nav-left-bottom li a').hover(function(){
    $(this).css({
        'color':'#f00'
    })
    $('.nav-left-bottom-showmore').css({
        'background-color':'#fff',
    })
    $('.nav-left').css({
        'z-index':'999'
    })
},function(){
    $(this).css({
        'color':'#000',
    })
    $('.nav-left-bottom-showmore').css({
       'background-color':'transparent'
   })
   $('.nav-left').css({
    'z-index':'-1'
})
})
var slides_to_next = function(){
    let select = $('.slides-select');
    let select_indi = $('.indicate-select'); 
    if(select.next().length!=0){
        select.css({
            'display':'none'
        }).removeClass('slides-select');
        select_indi.css({
            'border':'3px solid #bbb',
            'background-color':'transparent',
            
        }).removeClass('indicate-select');
        select_indi.next().css({
            'border':'3px solid #fff',
            'background-color':'#fff',
        }).addClass('indicate-select');
        select.next().css({
            'display':'block'
        }).addClass('slides-select')
    }else{
        
    let select_old = $('.slides-select');
    let select_indi_old = $('.indicate-select');
    
    let select = $('.slides').children(":first");
    let select_indi = $('.indicate').children(":first");
    
        select_old.css({
            'display':'none'
        }).removeClass('slides-select');
        select_indi_old.css({
            'border':'3px solid #bbb',
            'background-color':'transparent',
            'box-shadow':'none'    
        }).removeClass('indicate-select');
    
        select_indi.css({
            'border':'3px solid #fff',
            'background-color':'#fff',
            'box-shadow':'0 0 5px #000'
        }).addClass('indicate-select');
    
        select.css({
            'display':'block'
        }).addClass('slides-select')
    }
    
}
var slides_to_last = function(){
    let select = $('.slides-select');
    let select_indi = $('.indicate-select'); 
    if(select.prev().length!=0){
        select.css({
            'display':'none'
        }).removeClass('slides-select');
        select_indi.css({
            'border':'3px solid #bbb',
            'background-color':'transparent',
            
        }).removeClass('indicate-select');
        select_indi.prev().css({
            'border':'3px solid #fff',
            'background-color':'#fff',
        }).addClass('indicate-select');
        select.prev().css({
            'display':'block'
        }).addClass('slides-select')
    }else{
        
    let select_old = $('.slides-select');
    let select_indi_old = $('.indicate-select');
    
    let select = $('.slides').children(":last");
    let select_indi = $('.indicate').children(":last");
    
        select_old.css({
            'display':'none'
        }).removeClass('slides-select');
        select_indi_old.css({
            'border':'3px solid #bbb',
            'background-color':'transparent',
            'box-shadow':'none'    
        }).removeClass('indicate-select');
    
        select_indi.css({
            'border':'3px solid #fff',
            'background-color':'#fff',
            'box-shadow':'0 0 5px #000'
        }).addClass('indicate-select');
    
        select.css({
            'display':'block'
        }).addClass('slides-select')
    }
    
}
setInterval(slides_to_next,3000)
$('.pic-to-last').hover(function(){
    $(this).css({
        'background-color':'#666',
        'cursor': 'pointer'
    })
},function(){
    $(this).css({
        'background-color':'#bbb',
    })
})
$('.pic-to-next').hover(function(){
    $(this).css({
        'background-color':'#666',
        'cursor': 'pointer'
    })
},function(){
    $(this).css({
        'background-color':'#bbb',
    })
})
$('.pic-to-last').click(slides_to_last)
$('.pic-to-next').click(slides_to_next)
$('.indicate>li').hover(function(){
    console.log('1234')
    let select = $('.slides-select');
    let select_indi = $('.indicate-select'); 
        select.css({
            'display':'none'
        }).removeClass('slides-select');
        select_indi.css({
            'border':'3px solid #bbb',
            'background-color':'transparent',    
        }).removeClass('indicate-select');
        $(this).css({
            'border':'3px solid #fff',
            'background-color':'#fff',
        }).addClass('indicate-select');
        select.parent().children().eq($(this).index()).css({
            'display':'block'
        }).addClass('slides-select')
})
$('.user-profit>div').hover(function(){
    $(this).css({
        'cursor':"pointer",
        'color':'#fff',
        'background-color':'#f00'
    })
},function(){
    if($(this).attr('class')=='user-mumber'){
        $(this).css({
         'background-color':'#363634',
         'color':'#e5d790' 
        })
     }else{
        $(this).css({
            'background-color':'#fff',
            'color':'#f00' 
           })
     }
})
$('.right-news-title').children().eq(1).hover(function(){
    $('.right-news-title').children().eq(1).css({
        'color':'#777',
        'cursor':'pointer'
      })
},function(){
    $('.right-news-title').children().eq(1).css({
        'color':'#aaa',
      })
})
$('.right-news-content a').hover(function(){
    $(this).css({
        'color':"#e47f7f",

    })
},function(){
    $(this).css({
        'color':"#999",
    }) 
})
$('.pic-right-shortcut>ul>li').hover(function(){
    $(this).children().eq(1).css({
        'color':'#f00'
    })
},function(){
    $(this).children().eq(1).css({
        'color':'#bea68d'
    })
})
$('.info>p>select').change(function(){
    let value = $(this).val()
    switch(value){
        case 'charge-money-one':$('.pay-money').text('￥9.8-￥11.0');break;
        case 'charge-money-two':$('.pay-money').text('￥19.6-￥21.0');break;
        case 'charge-money-three':$('.pay-money').text('￥29.4-￥31.0');break;
        case 'charge-money-four':$('.pay-money').text('￥49.0-￥50.0');break;
        case 'charge-money-five':$('.pay-money').text('￥98.0-￥100.0');break;
        case 'charge-money-six':$('.pay-money').text('￥196.0-￥200.0');break;
        case 'charge-money-seven':$('.pay-money').text('￥294.0-￥300.0');break;
        case 'charge-money-five':$('.pay-money').text('￥490.0-￥500.0');break;
    }
})

$('.short-one>li').hover(function(){
    $('.short-one .shortcut-select').css({
        'color':'#bea68d'
    }).removeClass('shortcut-select');
    $('.tab-iframe .tab-select').css({
        'background-color':'#fff'
    }).removeClass('tab-select');
         if($(this).children().eq(1).text()=='话费'){
             $('.short-one .short-icon').css({
                 'display':'none'
             })
             $('.right-line').css({
                 'display':'none'
             })
     
     
             $('.tab-iframe').animate({
                 'top':'290px'
             },100,'linear')
         }
         $(this).children().eq(1).css({
             'color':'#f00'
         }).addClass('.shortcut-select')
         $('.tab-location').children().eq($(this).index()).css({
             'background-color':'#f00'
         }).addClass('tab-select')
     
 })
 $('.tab-close').click(function(){
     quickcutKey = false;
     $('.short-one .short-icon').css({
         'display':'block'
     })
     $('.right-line').css({
         'display':'block'
     })
 
 
     $('.tab-iframe').animate({
         'top':'490px'
     },100,'linear')
 })
 
 