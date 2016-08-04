<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'show_value.jsp' starting page</title>
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
    show_value.jsp <br>
    <ul>
    	<li>
    		<label>username=<s:property value="username"/></label>
    	</li>
    	<li>
    		<label>password=<s:property value="password"/></label>
    	</li>
    	<li>
    		<label>hobbies=<s:property value="hobbies"/></label>
    	</li>
    	<li>
    		<label>words=<s:property value="words"/></label>
    	</li>
    	<li>
    		<label>date=<s:date name="date" format="yyyy/MM/dd"/></label>
    	</li>
    	<li><label>point=<s:property value="point"/></label></li>
    	<li><label>points=<s:property value="points"/></label></li>
    </ul>
    <label><a href="index">&lt;-</a></label>
    <s:debug></s:debug>
  </body>
</html>
