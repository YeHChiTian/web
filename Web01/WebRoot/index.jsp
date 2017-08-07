<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  	<!-- 引入JQuery -->
  	<script type ="text/javascript" src ="js/jquery-1.8.0.js"></script>
  	<script type ="text/javascript" >
  		$(document).ready(function(){
  			var flag1 = false;
  			var flag2 = false;
  			//为用户名输入框增加（鼠标焦点离开）的事件
  			$("#i_username").blur(function(){
  				var name = $("#i_username").val();
  				if(name==""|| name==null) {
  					flag1 = true;
					$("#userlab").text("用户名不能为空");
				}
  				else{
  					$("#userlab").text("");}
  			});
			
			$("#i_password").blur(function(){
				var name = $("#i_password").val();
				if(name=="" || name ==null){
					flag2 = true;
					$("#pswlab").text("密码不能为空");
				}
				else{
					$("#pswlab").text("");}
			});
			
			$("#login").click(function(){
				if(!flag1&&!flag2)
				{
					$("#fm").submit();
				}
				else{
					return false;}
			});		
  		});
  	</script>
	
  </head>
  <body>
   	<form  id ="fm" action="loginCheck.jsp" method ="post">
   		<input type ="text" name="username" id ="i_username" placeholder="用户名">
   		<label id="userlab"></label><br>
   		
   		<input type ="text" name="password" id ="i_password" placeholder="密码">
   		<label id="pswlab"></label><br>
   		
   		<input type ="submit" id ="login" value="登录"><br>
   	</form>
  </body>
</html>
