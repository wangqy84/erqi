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
	 <jsp:include page="gongyong.jsp" />
	 <style>
	 .ked{
	 background: url(../img/bg.png) repeat-y;
	 }
	 </style>
  </head>
   <body class="easyui-layout">   
    <div data-options="region:'west',href:'background/left.jsp',border:false" Class="ked" style="width:170px" ></div>   
    <div data-options="region:'center',href:'https://www.baidu.com/?tn=93153557_hao_pg'" ></div>   
</body>  
</html>