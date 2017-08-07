<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
  	<%
  		//得到session的信息
  		String name = (String)session.getAttribute("username");
  	 %>
  	 <!-- 使用JSP表达式显示用户名 -->
  	 <%=name %>, 欢迎你登录
    This is my main page. <br>
    <!-- EL表达式显示已经保存在session中数据 -->
    ${username} ,欢迎登陆！ 
  </body>
</html>
