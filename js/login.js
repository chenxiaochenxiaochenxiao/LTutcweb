 function checkUser(){
   var result = $("#user").val();
   var password = $("#pwd").val();
   if(result == ""  ){
     alert("用户名不能为空");
     return false;
   }
   if(password == ""  ){
    alert("密码不能为空");
     return false;
   }else{
   return true;
   }
}
