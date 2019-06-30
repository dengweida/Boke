<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<% 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragrma","no-cache"); 
response.setDateHeader("Expires",0); 
%>
<title></title>
</head>
<c:if test="${not empty u.username}">
	<body>
		<center>
			<h1>欢迎使用伟大新闻平台后台管理</h1>
		
		<c:if test="${u.role==1}">
		${u.username }，您好！您的身份是：<span style="color:blue">普通管理员</span>
		</c:if>
		<c:if test="${u.role==2}">
		${u.username }，您好！您的身份是：<span style="color:blue">总管理员</span>
		</c:if>
		</center>
	</body>
	</c:if>
	<c:if test="${empty u.username }">
	   <script type="text/javascript">
    alert("请 先 登 陆 ！");
    window.location.href = "${pageContext.request.contextPath }/syslogin.jsp";
</script>
	</c:if>
</html>