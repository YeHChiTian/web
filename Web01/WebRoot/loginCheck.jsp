<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
   	<%
   		//要得到客户端请求发过来的数据，就要使用内置对象request的getParameter方法
   		//getParameter方法的参数对应表单的<input> 的username 属性值
   		String name = request.getParameter("username");
   		String psw = request.getParameter("password");
   		if(name.equals("admin") && psw.equals("123")){
   			//验证成功保存用户信息, 使用session内置对象保存， 可以让其他页面这个数据
   			session.setAttribute("username", name);
   		
   			//验证成功，则跳转到main.jsp页面, 使用内置对象reponse中的sendRedirect
   			response.sendRedirect("main.jsp");
   		}else{
   			//输出错误信息， 输出时要使用内置对象out
   			out.write("<script>alert('you are stupid, the username or password is wrong')</script>");
   		}
   	 %>
  </body>
</html>
