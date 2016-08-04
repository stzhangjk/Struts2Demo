<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>My JSP 'register_input.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    register_input.jsp<br>
    <form action="register" method="post">
 	   <input name="user.username" type="text" placeholder="用户名" value=""/><br/>
 	   <input name="user.pass" type="password" placeholder="密码" value=""/><br/>
 	   <input name="user.email" type="email" placeholder="邮箱" value=""/><br/>
 	   <input type="submit" value="注册"/>
    </form>
  </body>
</html>
