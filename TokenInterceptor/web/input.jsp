<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>My JSP 'input.jsp' starting page</title>
	<%@taglib uri="/struts-tags" prefix="s" %>
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
    <form action="reg" method="post">
    	<input name="username" type="text" placeholder="用户名" value=""/><br/>
    	<input name="password" type="password" placeholder="密码" value=""/><br/>
    	<s:token></s:token>
    	<input type="submit" value="注册"/> <br/>
    </form>
    <br>
  </body>
</html>
