<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html>
  <head>
    <title>My JSP 'show_cat.jsp' starting page</title>
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
  OGNL —— Object-Graph Navigation Language
  <hr/>
	<ol>
		<li>
			访问普通属性：属性名.属性名<br /> 
			cat.name: <s:property value="cat.name" /><br />
			cat.age: <s:property value="cat.age" /><br /> 
			cat.friend.name: <s:property value="cat.friend.name" /><br /> 
			cat.friend.age: <s:property value="cat.friend.age" /><br />
		</li>
		<li>
			访问普通方法：方法名()<br /> 
			func(): <s:property value="func()" /><br />
		</li>
		<li>
			访问static属性和方法：@类名@属性名   @类名@方法名()<br/>
    		@util.Util@string : <s:property value="@util.Util@string"/><br/>
    		@util.Util@staticFunc() : <s:property value="@util.Util@staticFunc()"/> <br/>
		</li>
		<li>
			访问Math的方法：@@方法名()<br/>
    		@@max(2,3):<s:property value="@@max(2,3)"/><br/>
		</li>
		<li>
			访问数组：<br/>
			strs : <s:property value="strs"/><br/>
			strs[0] : <s:property value="strs[0]"/><br/>
			
		</li>
		<li>
			访问List:<br/>
			cats : <s:property value="cats"/><br/>
			cats[0] : <s:property value="cats[0]"/><br/>
			cats.{name} : <s:property value="cats.{name}"/><br/>
			cats.{name}[0] : <s:property value="cats.{name}[0]"/><br/>
		</li>
		<li>
			访问Set:<br/>
			dogs : <s:property value="dogs"/><br/>
			dogs[0] : <s:property value="dogs[0]"/><br/>
			因为Set没有顺序，所以取不出来。<br/>
		</li>
		<li>
			访问Map：<br/>
			catMap : <s:property value="catMap"/><br/>
			catMap.cat1 : <s:property value="catMap.cat1"/><br/>
			catMap['cat1'] : <s:property value="catMap['cat1']"/><br/>
			catMap[\"cat2\"] : <s:property value="catMap[\"cat2\"]"/><br/>
			catMap.keys : <s:property value="catMap.keys"/><br/>
			catMap.values : <s:property value="catMap.values"/><br/>
		</li>
		
		<li>
			投影（过滤）:<br/> 
			将对集合中的元素进行遍历,this代表当前元素<br/>
			所有age==0的对象的age集合：cats.{?#this.age==0}.{age} : <s:property value="cats.{?#this.age==0}.{age}"/><br/>
			取上述集合的元素 : cats.{?#this.age==0}.{age}[0] : <s:property value="cats.{?#this.age==0}.{age}[0]"/><br/>
			取集合中的第一个 ： cats.{^#this.age==0} : <s:property value="cats.{^#this.age==0}"/><br/>
			取集合中的最后一个：cats.{$#this.age==0} : <s:property value="cats.{$#this.age==0}"/><br/>
			试用 == 符号 ： cats.{$#this.age==0} == null : <s:property value="cats.{$#this.age} == null"/>
		</li>
		<li>
			中括号访问ValueStack中指定位置及以下的所有元素，栈顶为0<br/>
			[0] : <s:property value="[0]"/><br/>
			[1] : <s:property value="[1]"/><br/>
			[0].cats : <s:property value="[0].cats"/><br/>
			[1].cats : <s:property value="[1].cats"/><br/>
		</li>
	</ol>

	<s:debug/>
  </body>
</html>
