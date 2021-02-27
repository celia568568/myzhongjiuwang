"use strict";function code(){for(var e=[0,1,2,3,4,5,6,7,8,9,"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z","A","B","C","D","E","F","G","H","I","J","K","L","M","N","O","P","Q","R","S","T","U","V","W","X","Y","Z"],t="",r=0;r<4;r++)t+=e[parseInt(62*Math.random()+0)];$(".getCode").html(t)}jQuery.validator.addMethod("testUser",function(e){return/^\S[a-zA-Z0-9_\u4e00-\u9fa5]{1,7}$/.test(e)},"用户名由2-8位字符组成，包含字母，数字或汉字，不能出现空格"),jQuery.validator.addMethod("testTel",function(e){return/^1[356789]\d{9}$/.test(e)}),jQuery.validator.addMethod("testPw",function(e){return/^\S{6,20}$/.test(e)},"密码由6-20位非空格字符组成"),jQuery.validator.addMethod("testCode",function(e){return e==$(".getCode").text()}),$(".form").validate({rules:{user:{required:!0,rangelength:[2,8],testUser:!0},cell:{required:!0,testTel:!0},password:{required:!0,testPw:!0},recheck:{required:!0,equalTo:"#pw"},telcode:{required:!0,testCode:!0},reading:{required:!0}},messages:{user:{required:"请输入用户名",rangelength:"用户名只能输入2-8个字符之间",testUser:"用户名由2-8位字符组成，包含字母，数字或汉字，不能出现空格"},cell:{required:"请输入手机号码",testTel:"请输入正确的手机号码"},password:{required:"请输入密码",testPw:"密码长度只能在6-20位字符之间，不包含空格"},recheck:{required:"请再次输入密码",equalTo:"两次输入的密码不一致"},telcode:{required:"请输入验证码",testCode:"验证码输入有误"},reading:{required:"请仔细阅读并同意以上协议"}},submitHandler:function(){$.ajax({url:"../data/zc.php",method:"post",data:{username:$("#username").val(),tel:$("#tel").val(),password:$("#pw").val()},success:function(e){"1"==e?(alert("恭喜您注册成功，请登录"),location.href="../html/dl.html"):alert(e)},error:function(e){console.log(e)}})}}),$(".getCode").on("click",function(e){e.preventDefault(),code(),$(".getCode").css({fontSize:"16px",color:"red",fontWeight:900})});