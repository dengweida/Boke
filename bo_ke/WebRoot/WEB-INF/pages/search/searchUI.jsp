<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>${topic.title}</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/style/main.css"> 
</head>
<body>

<%-- 搜索表单 --%>
<html:form action="/searchArticle?method=search" styleClass="simpleSearchForm">
    <font class="logoLabel">传智播客贴吧</font>
    <html:text property="queryString" styleClass="queryString"/>
	<html:submit value="搜 索"/>
</html:form>

</body>
</html>
