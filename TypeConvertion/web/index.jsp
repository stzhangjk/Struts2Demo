<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
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
    index.jsp <br>
    <ul>
    	<li>
    		   传递String：<a href="value.action?username=admin&password=123456">value.action?username=admin&password=123456</a>
    	</li>
    	<li>
    		传递集合：hobbies<br/>
    		<form action="value" method="post">
    			<label>	<input name="hobbies" type="checkbox" value="篮球" />篮球</label>
    			<label> <input name="hobbies" type="checkbox" value="羽毛球"/>羽毛球</label>
    			<label> <input name="hobbies" type="checkbox" value="Java"/>Java</label>
    			<label><input type="submit" value="提交"/></label>
    		</form>
    	</li>
    	<li>
    		<label>传递Map：<a href="value?words['w1']=word1&words['w2']=word2">value?words['w1']=word1&words['w2']=word2</a></label>
    	</li>
    	<li>
    		<label>传递日期：<a href="value?date=1994-10-14">value?date=1994-10-14</a></label>
    	</li>
    	<li>
    		<label>自定义转换器：<a href="value?point=1,9">value?point=1,9</a></label>
			<br/>    		
    		<label>自定义转换器：<a href="value?points[0]=1,5&points[1]=2,6">points[0]=1,5&points[1]=2,6</a></label>
    	</li>
    </ul>
 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
  </body>
</html>
