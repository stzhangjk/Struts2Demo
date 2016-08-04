<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">
<%@taglib uri="/struts-tags" prefix="s"%>
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
<h2>Struts2标签</h2>
<hr />
<ol>
  <li>
    <h3>property：</h3>
    取valueStack中的值 &lt;s:property value="username"/&gt; =
    <s:property value="username" />
    <br />
    字符串&lt;s:property value="'username'"/&gt; =
    <s:property value="'username'" />
    <br />
    default指定默认值&lt;s:property value="username" default="admin"/&gt; =
    <s:property value="username" default="admin" />
    
    <br />
    设定html标签&lt;s:property value="'&lt;hr/&gt;'" escape="false"/&gt; =
    <s:property value="'<hr/>'" escape="false" />
    <br />
    &lt;s:property value="'&lt;hr/&gt;'" escape="true" /&gt; =
    <s:property value="'<hr/>'" escape="true" />
    <br />
    escape省略默认为true 
    </li>
    <li>
    	<h3> set标签</h3>
    	设置属性值，scope默认为action，将往request和ActionContext放，value是Object类型，指定为某个对象的键，&lt;s:set var="user" value="'admin'"/&gt;  <s:set var="user" value="'admin'"/><br/>
    	取出user : &lt;s:property value="#user"/&gt; = <s:property value="#user"/>
    </li>
    <li>
    	<h3>bean标签</h3>
    	创建Dog对象,
    	&lt;s:bean name="Dog" var="dog"&gt;<br/>
    	 	&lt;s:param name="name"&gt;oudy&lt;/s:param&gt;<br/>
    	 &lt;/s:bean&gt;<br/>
    	 <s:bean name="Dog" var="dog">
    	 	<s:param name="name">oudy</s:param>
    	 </s:bean>
    	 取出来，&lt;s:property value="#dog"/&gt; = <s:property value="#dog"/>
    </li>
    <li>
    	<h3>include标签</h3>
    	静态包含英文html : <s:include value="include1.html"/><br/>
    	静态包含中文html : <s:include value="include2.html"/><br/>
    	OGNL静态包含html : 往ActionContext放值：&lt;s:set var="incHtml" value="'include2.html'"/&gt;<s:set var="incHtml" value="'include2.html'"/><br/>
    	include标签value属性放OGNL(%{}中强制使用OGNL解析)，&lt;s:include value="%{#incHtml}"/&gt; = <s:include value="%{#incHtml}"/><br/> 
    </li>
    <li>
    	<h3>if else ifelse标签</h3>
    	<a href="index.jsp?age=10">/index.jsp?age=10</a><br/>
    	parameters : <s:property value="#parameters"/><br/>
    	<s:if test="#parameters.age[0] < 0">age error!</s:if>
    	<s:elseif test="#parameters.age[0] < 20">age too young!</s:elseif>
    	<s:else>ok age!</s:else><br/>
    </li>
    <li>
    	<h3>iterator标签</h3>
    	遍历数组：<br/>
    	<s:iterator value="{1,2,3,4,5,6,7,8,9}">
    		<s:property/> |
    	</s:iterator>
    	<br/>
    	<s:iterator value="{'aaa','bbb','ccc'}">
    		<s:property/> | 
    	</s:iterator>
    	<br/>
    	遍历map:<br/>
    	&#35;{'key1':'aaa','key2':'bbb','key3':'ccc'}<br/>
    	<s:iterator value="#{'key1':'aaa','key2':'bbb','key3':'ccc'}">
    		<s:property value="key"/> | <s:property value="value"/><br/>
    	</s:iterator>
    	&#35;{1:111,2:222,3:333}<br/>
    	<s:iterator value="#{1:111,2:222,3:333}" var="map1">
    		<s:property value="#map1.key"/> | <s:property value="#map1.value"/><br/>
    	</s:iterator>
    </li>
</ol>
<hr />
<s:debug />
</body>
</html>
