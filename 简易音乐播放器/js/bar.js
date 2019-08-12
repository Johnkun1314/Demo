var songs = [
    { name: "广东爱情故事", author: "广东雨神", url: "songs/music/1.mp3",photo:"songs/photo/1.jpg" },
    { name: "被风吹过的夏天", author: "林俊杰", url: "songs/music/2.mp3",photo:"songs/photo/2.jpg" },
    { name: "牵丝戏", author: "银临/Aki阿杰", url: "songs/music/3.mp3",photo:"songs/photo/3.jpg" },
    { name: "沙漠骆驼", author: "展展与罗罗", url: "songs/music/4.mp3",photo:"songs/photo/4.jpg" },
    { name: "广东爱情故事", author: "广东雨神", url: "songs/music/1.mp3",photo:"songs/photo/1.jpg" },
    { name: "被风吹过的夏天", author: "林俊杰", url: "songs/music/2.mp3",photo:"songs/photo/2.jpg" },
    { name: "牵丝戏", author: "银临/Aki阿杰", url: "songs/music/3.mp3",photo:"songs/photo/3.jpg" },
    { name: "沙漠骆驼", author: "展展与罗罗", url: "songs/music/4.mp3",photo:"songs/photo/4.jpg" },
    { name: "广东爱情故事", author: "广东雨神", url: "songs/music/1.mp3",photo:"songs/photo/1.jpg" },
    { name: "被风吹过的夏天", author: "林俊杰", url: "songs/music/2.mp3",photo:"songs/photo/2.jpg" },
    { name: "牵丝戏", author: "银临/Aki阿杰", url: "songs/music/3.mp3",photo:"songs/photo/3.jpg" },
    { name: "沙漠骆驼", author: "展展与罗罗", url: "songs/music/4.mp3",photo:"songs/photo/4.jpg" },
    { name: "广东爱情故事", author: "广东雨神", url: "songs/music/1.mp3",photo:"songs/photo/1.jpg" },
    { name: "被风吹过的夏天", author: "林俊杰", url: "songs/music/2.mp3",photo:"songs/photo/2.jpg" },
    { name: "牵丝戏", author: "银临/Aki阿杰", url: "songs/music/3.mp3",photo:"songs/photo/3.jpg" },
    { name: "沙漠骆驼", author: "展展与罗罗", url: "songs/music/4.mp3",photo:"songs/photo/4.jpg" },
    { name: "广东爱情故事", author: "广东雨神", url: "songs/music/1.mp3",photo:"songs/photo/1.jpg" },
    { name: "被风吹过的夏天", author: "林俊杰", url: "songs/music/2.mp3",photo:"songs/photo/2.jpg" },
    { name: "牵丝戏", author: "银临/Aki阿杰", url: "songs/music/3.mp3",photo:"songs/photo/3.jpg" },
    { name: "沙漠骆驼", author: "展展与罗罗", url: "songs/music/4.mp3",photo:"songs/photo/4.jpg" },
    { name: "广东爱情故事", author: "广东雨神", url: "songs/music/1.mp3",photo:"songs/photo/1.jpg" },
    { name: "被风吹过的夏天", author: "林俊杰", url: "songs/music/2.mp3",photo:"songs/photo/2.jpg" },
    { name: "牵丝戏", author: "银临/Aki阿杰", url: "songs/music/3.mp3",photo:"songs/photo/3.jpg" },
    { name: "沙漠骆驼", author: "展展与罗罗", url: "songs/music/4.mp3",photo:"songs/photo/4.jpg" },
    { name: "广东爱情故事", author: "广东雨神", url: "songs/music/1.mp3",photo:"songs/photo/1.jpg" },
    { name: "被风吹过的夏天", author: "林俊杰", url: "songs/music/2.mp3",photo:"songs/photo/2.jpg" },
    { name: "牵丝戏", author: "银临/Aki阿杰", url: "songs/music/3.mp3",photo:"songs/photo/3.jpg" },
    { name: "沙漠骆驼", author: "展展与罗罗", url: "songs/music/4.mp3",photo:"songs/photo/4.jpg" },
    { name: "广东爱情故事", author: "广东雨神", url: "songs/music/1.mp3",photo:"songs/photo/1.jpg" },
    { name: "被风吹过的夏天", author: "林俊杰", url: "songs/music/2.mp3",photo:"songs/photo/2.jpg" },
    { name: "牵丝戏", author: "银临/Aki阿杰", url: "songs/music/3.mp3",photo:"songs/photo/3.jpg" },
    { name: "沙漠骆驼", author: "展展与罗罗", url: "songs/music/4.mp3",photo:"songs/photo/4.jpg" },
    { name: "广东爱情故事", author: "广东雨神", url: "songs/music/1.mp3",photo:"songs/photo/1.jpg" },
    { name: "被风吹过的夏天", author: "林俊杰", url: "songs/music/2.mp3",photo:"songs/photo/2.jpg" },
    { name: "牵丝戏", author: "银临/Aki阿杰", url: "songs/music/3.mp3",photo:"songs/photo/3.jpg" },
    { name: "沙漠骆驼", author: "展展与罗罗", url: "songs/music/4.mp3",photo:"songs/photo/4.jpg" },
    { name: "广东爱情故事", author: "广东雨神", url: "songs/music/1.mp3",photo:"songs/photo/1.jpg" },
    { name: "被风吹过的夏天", author: "林俊杰", url: "songs/music/2.mp3",photo:"songs/photo/2.jpg" },
    { name: "牵丝戏", author: "银临/Aki阿杰", url: "songs/music/3.mp3",photo:"songs/photo/3.jpg" },
    { name: "沙漠骆驼", author: "展展与罗罗", url: "songs/music/4.mp3",photo:"songs/photo/4.jpg" },
];

let songlist = $('.sings');  //获得播放列表容器
let scrollbar = $(".scrollbar"); //获得滚动条对象
init();
function init(){
    initlist();
    initScroll();
}
 songlist[0].style.top = '0px';
//设置播放列表伴随鼠标滚动事件
$('.sing-list')[0].onmousewheel = function(e){
    let top =  parseInt(songlist[0].style.top);

    if(top<=0&&(-top+songlist[0].clientHeight)<=songlist[0].scrollHeight){
       if( (top+ e.wheelDeltaY/15)>0){
           console.log('overflow_top')
       }else if((-top- e.wheelDeltaY/15)>=songlist[0].scrollHeight-songlist[0].clientHeight){
           console.log('overflow_bottom')
       } else{
        songlist[0].style.top = top+ parseInt(e.wheelDeltaY/15)+'px';
        scrollbar[0].style.top = -top/songlist[0].scrollHeight*songlist[0].clientHeight+'px';
       }
        
    }   
    console.log(top)     
}

//设置拖拽滚动条事件
$('.scrollbar').click(()=>{
    console.log('.3')
})

//设置删除列表歌曲事件
$('.close').click((e)=>{
    
    $('.sings')[0].removeChild(e.currentTarget.parentNode);
    if(songlist[0].scrollHeight>songlist[0].clientHeight){
        initScroll();
    }else{
        scrollbar.css('display','none');
    }
    // if(e.currentTarget.previousElementSibling.previousElementSibling.className)
    console.log($(this)[0])
})

//初始化滚动条的高度
function initScroll(){
    var h = songlist[0].clientHeight/songlist[0].scrollHeight*songlist[0].clientHeight;
    scrollbar.css('height',h+'px')
}


//初始化播放列表
function initlist(){
    for(let i = 0;i<songs.length;i++){
        let si = songs[i];
        let li = $('<li class="clearFix"></li>');
        li.html(`
           <span >${si.author} - ${si.name}</span>
           <span class="playing glyphicon glyphicon-play"></span>
         
        `);
        li.attr({
            'songurl':si.url,
            'songphoto':si.photo
        });
        li.addClass('clearfix');
        li.appendTo(songlist);
    }
}