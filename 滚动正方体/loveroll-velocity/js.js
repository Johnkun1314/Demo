var mySequence = [
    { e: $('.board'), p: { rotateX: 180,rotateY: 180 }, o: { duration: 3000 } },
    { e: $('.board'), p: { rotateZ: 180,rotateX: 0 }, o: { duration: 3000 } },
    { e: $('.board'), p: { rotateZ: 0,rotateY: 0 }, o: { duration: 3000 } },  
];
function rolls(){
    var roll = setInterval(() => {    
        $.Velocity.RunSequence(mySequence);
        }, 9000);
        
}

var love = function(){
    for(let i=0;i<360;i=i+360/36){
        let spanv = $('<span class="love"></span>').css({
            'transform' : "rotateY(" + i + "deg) rotateZ(50deg)"
        })    
        $('.board').append(spanv);
    }
}

$('.board').velocity({
    width:'0px'
},{
   duration:1000,
   display:'block',
   begin:()=>{
       $('.board').css('border','1px solid red')
       $('.board').velocity({
           width:[200,0],
           height:[200,0],
       },{duration:1000})
   },
   progress:()=>{
       $('.board>div').velocity({
           width:'200px',
           height:'200px'
       },{
           duration:2000,
           display:'block',
       })
   },
   complete:()=>{
    $('.board').css('border','none');
    love();
    $.Velocity.RunSequence(mySequence);
    rolls();
    
   }
})

