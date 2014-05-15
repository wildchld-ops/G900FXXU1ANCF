function triggerclick(){
var element = null;
var ip = document.getElementsByTagName("input");
for(var index=0; index < ip.length; index++){
 if(ip[index].type != "submit") continue;
 if(ip[index].value == null || ip[index].value == undefined) continue;
 var res = ip[index].value.trim();
 if((-1 != res.toLowerCase().indexOf("sign") && -1 != res.toLowerCase().indexOf("in")) || (-1 != res.toLowerCase().indexOf("로그인") )){
  element = ip[index]; break;
 }
}
if(element){
 var evt = document.createEvent("MouseEvents");
 evt.initEvent("click", true, true);
 element.dispatchEvent(evt);
}
}

triggerclick();