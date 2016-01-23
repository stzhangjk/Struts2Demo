<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML>
<html>
  <head>
    <base href="<%=basePath%>">
    <%@taglib uri="/struts-tags" prefix="s" %>
    <title>My JSP 'index.jsp' starting page</title>
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
   访问request,session,application<br>
	<form name="f" action="" method="post">
		<input name="username" placeholder="用户名" type="text" value=""/><br/>
		<input name="password" placeholder="密码" type="password" value=""/>
		<input type="button" value="LoginAction1" onclick="javascript:document.f.action='login1.action';document.f.submit();">
		<input type="button" value="LoginAction2" onclick="javascript:document.f.action='login2.action';document.f.submit();">
		<input type="button" value="LoginAction3" onclick="javascript:document.f.action='login3.action';document.f.submit();">
		<input type="button" value="LoginAction4" onclick="javascript:document.f.action='login4.action';document.f.submit();">
	</form>
  </body>
</html>
