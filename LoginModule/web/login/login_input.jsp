<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML>
<html>
  <head>
    <title>My JSP 'login.jsp' starting page</title>
 <base href="<%=basePath%>">
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
    login.jsp <br>
    <form action="login/login" method="post">
    	<input name="username" type="text" placeholder="用户名" value=""/><br/>
    	<input name="pass" type="password" placeholder="密码" value=""/><br/>
    	<input type="submit" value="登陆"/>
    </form>
  </body>
</html>
