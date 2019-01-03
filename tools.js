//深度克隆   
function deepclone(origin,target){
    var target = target||{};
    toStr = Object.prototype.toString;
    arrStr = "[object arrar]";
    for(var prop in origin){
             if(origin[prop]!=="null"&&origin.hasOwnProperty(origin[prop])=="object"){
                 if(toStr.call(origin[prop])==arrStr){
                     target[prop] = [];
                 }
                 else{
                     target[prop] = {};
                 }
                 deepclone(origin[prop],target[prop]);
             }
             else{
                 target[prop]=origin[prop];
             }
    }
    return target;
}
//圣杯继承
var inherit = (function(){
    var F=function(){};
    return function(origin,target){
         F.prototype=origin.prototpye;
         target.prototype = new F();
         target.prototype.uber=origin.prototype;
         target.prototype.constructor=target;
    };
}())
//数组去重
Array.prototype.unique=function(){
    var temp={};
    var arr=[];
    len=this.length;
    for(var i=0;i<len;i++){
       if(!temp[this[i]]){
           temp[this[i]]="abc";
           arr.push(this[i]);
       }
    }
    return arr;
}
//字符串去重
String.prototype.unique=function(){
    var temp={};
    var arr=[];
    len=this.length;
    for(var i=0;i<len;i++){
       if(!temp[this[i]]){
           temp[this[i]]="abc";
           arr.push(this[i]);
       }
    }
    return arr.join("");
}