var playingkey = false;
var playingDom = null;
var playingIndex = -1;
var refreshkey = true;

var playbar = $('.playbar'); //获取进度播放条
var singduration = $('.sing-duration'); //总时间
var singcurrentTime = $('.sing-currentTime'); //当前时间

var prevsing = $('.glyphicon-step-backward'); //上一曲
var nextsing = $('.glyphicon-step-forward'); //下一曲
var playfun = $('.fun').children().eq(1); //暂停播放

//歌手头像滚动动画队列
var rotateSequence = [
    {e: $('.singer-photo img'), p: {rotateZ:'-45deg'}, o: {duration: 3000}},
    {e: $('.singer-photo img'), p: {rotateZ:'45deg'}, o: {duration: 3000}}
];
//执行动画队列
$.Velocity.RunSequence(rotateSequence);
setInterval(()=>{
    $.Velocity.RunSequence(rotateSequence);
},6000)



//当前歌曲播放完毕检测
playbar[0].ontimeupdate = function(){
     //playbar.currentTime --当前播放进度条时间
     //playbar.duration -- 当前歌曲总时间
     let totalTime = parseInt(playbar[0].currentTime);
     let m =String( parseInt(totalTime/60) );
     let s =String(totalTime - m*60);
     
     $('.progress-bar').css('width',playbar[0].currentTime/playbar[0].duration*100+'%')
     if(m.length==1||s.length){
         if(m.length==1){
            m="0"+m;
         }
         if(s.length==1){
            s='0'+s;
         }
        
     }
     
     singcurrentTime.text(m+":"+s)
    if(playbar[0].currentTime >= playbar[0].duration){
       playingIndex++;
       if(playingIndex>=songs.length){
        playingIndex=0;
    }
    playingNext();
    }

}

 
playbar[0].oncanplay = function () {
    let totalTime = parseInt(playbar[0].duration);
    let m =String( parseInt(totalTime/60) );
    let s =String(totalTime - m*60);
    
    if(m.length==1||s.length){
        if(m.length==1){
           m="0"+m;
        }
        if(s.length==1){
           s='0'+s;
        }
       
    }
	singduration.text( m+":"+s )
}
//下一曲事件
function playingNext(){
    let li = songlist.children().eq(playingIndex);
  
    $('.fun').children().eq(1)
    .removeClass('glyphicon-play')
    .addClass('glyphicon-pause');
    

  //更改原播放歌曲样式
    playingDom.css({'color':'blueviolet','background':'transparent'})
       .children().eq(1)
       .removeClass('glyphicon-pause')
       .addClass('glyphicon-play');
  //给新歌曲添加样式

     li.css({'color':'violet','background':'#333'})
    .children().eq(1)
    .removeClass('glyphicon-play')
    .addClass(' glyphicon-pause');
    
    playingDom = li;

    $('.play-sing').text(li.children().eq(0).text());
    $('.playbar').attr('src',li.attr('songurl'));
    $('.singer-photo img').attr('src',li.attr('songphoto'));
    

    isInViewPort()   
    // if(isInViewPort(li[0])){

    // }else{
    //     console.log('1234')
    // }

}

$('.playing').click(function(){
     let that = $(this).parent();
     let name = that.children().eq(0);

    if(!playingkey){
           $('.fun').children().eq(1)
           .removeClass('glyphicon-play')
           .addClass('glyphicon-pause')
           playingkey = true; 
        if(playingIndex === -1){
           
            playingIndex = that.index();
            playingDom = that;
           
            playingDom.css('color','violet')
            .children().eq(1)
            .removeClass('glyphicon-pause')
            .addClass('glyphicon-play');

            $(this).removeClass('glyphicon-play')
            .addClass('glyphicon-pause');
            that.css({
                'color':'violet',
                'background':'#333'
            });
            $('.play-sing').text(name.text());
            $('.playbar').attr('src',that.attr('songurl'));
            $('.singer-photo img').attr('src',that.attr('songphoto'));   
        }
        else if(that.index() !== playingIndex){
            playingIndex = that.index();
          
            playingDom.css({
                'color':'blueviolet',
                'background':'transparent'
            })
            .children().eq(1)
            .removeClass('glyphicon-pause')
            .addClass('glyphicon-play');
            playingDom = that;
            $(this).removeClass('glyphicon-play')
            .addClass('glyphicon-pause');
            that.css({
                'color':'violet',
                'background':'#333'
            });
            $('.play-sing').text(name.text());
            $('.playbar').attr('src',that.attr('songurl'));
            $('.singer-photo img').attr('src',that.attr('songphoto'));
        }else{

            $(this).removeClass('glyphicon-play')
            .addClass('glyphicon-pause');
            $('.playbar')[0].play();
        }
        
    }else{

        if(that.index() === playingIndex){
            playingkey=false;
            $('.playbar')[0].pause()        
            $(this) .removeClass('glyphicon-pause')
            .addClass('glyphicon-play');
          
            $('.fun').children().eq(1)
            .removeClass('glyphicon-pause')
            .addClass('glyphicon-play');
            
        }else{
            playingIndex = that.index();

            playingDom.css({
                'color':'blueviolet',
                'background':'transparent'
            })
            .children().eq(1)
            .removeClass('glyphicon-pause')
            .addClass('glyphicon-play');
            
            playingDom = that;
            $(this).removeClass('glyphicon-play')
            .addClass('glyphicon-pause');
            that.css({'color':'violet','background':'#333'});
            $('.play-sing').text(name.text());
            $('.playbar').attr('src',that.attr('songurl'));
            $('.singer-photo img').attr('src',that.attr('songphoto'));
        }
    }
//    initDuration();
})

//歌曲控制按钮

playfun.click(()=>{
   if(playingIndex == -1){
       playingkey = true;
       playingDom = songlist.children().eq(0);
       playingIndex = 0;
       playingNext();
   }else{
       if(playingkey){
        $('.fun').children().eq(1)
        .removeClass('glyphicon-pause')
        .addClass('glyphicon-play');

        playingDom.children().eq(1)
        .removeClass('glyphicon-pause')
        .addClass('glyphicon-play');
        
        playingkey = false;
        $('.playbar')[0].pause();
       }else{
        $('.fun').children().eq(1)
        .removeClass('glyphicon-play')
        .addClass('glyphicon-pause');
         playingkey = true;          

         playingDom.children().eq(1)
         .removeClass('glyphicon-play')
         .addClass('glyphicon-pause');
         $('.playbar')[0].play();
       }
   }
})
nextsing.click(()=>{
    if(playingIndex == -1){

    }else{
    playingIndex++;
        if(playingIndex>=songs.length){
         playingIndex=0;
        }
        playingNext();
    }
})
prevsing.click(()=>{
    if(playingIndex == -1){

    }else{
    playingIndex--;
        if(playingIndex ==-1){
         playingIndex=songs.length-1;
        }
        playingNext();
    }
})

//当前播放歌曲是否在视窗内
function isInViewPort() {
    let top =  parseInt(songlist[0].style.top);

    let topIndexPrev =  parseInt(Math.abs(parseInt(songlist[0].style.top))/40)-1;
    let topIndexNext =  parseInt((Math.abs(parseInt(songlist[0].style.top))+parseInt(songlist[0].clientHeight))/40)-1;
    let thisIndex = playingDom.index()-1;
    if(topIndexPrev == thisIndex&&thisIndex!==0){
     
         songlist[0].style.top = top + 40 +'px';
        scrollbar[0].style.top = Math.abs(parseInt(songlist[0].style.top))/songlist[0].scrollHeight*songlist[0].clientHeight+'px';   
       
    }
    if(topIndexNext == thisIndex && playingIndex != (songs.length-1)){
 
        songlist[0].style.top = top - 40 +'px';
        scrollbar[0].style.top = Math.abs(top)/songlist[0].scrollHeight*songlist[0].clientHeight+'px';
    }
  }
   