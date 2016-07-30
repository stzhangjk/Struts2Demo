<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'login.jsp' starting page</title>
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
    login.jsp<br>
    <!-- properties文件名：Action名_语言.properties -->
    <!-- 放在Action同一目录下 -->
    
    <!-- 包级别：package_语言.properties ,放在包下-->
    
    <!-- 应用级别：指定的前缀_语言.properties, 放在src下
    	指定 前缀，struts.custom.i18n.resources
    -->
    
    <s:property value="getText('login.username')"/><input type="text" value=""/><br/>
    <s:property value="getText('login.password')"/><input type="password" value=""/><br/>
    <button ><s:property value="getText('login.login')"/></button>
  </body>
</html>
