<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>显示搜索结果</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/style/main.css"> 
</head>
<body>

<%-- 简单搜索表单 --%>
<%@include file="/WEB-INF/pages/search/simpleSearchUI.jsp" %>

<%-- 菜单 --%>
<div class="menubar">
	<html:link action="/article?method=listTopic">主题列表</html:link>
</div>

<div style="padding: 10px 30px; font-size: 12px; font-family:'宋体'">
	共有<font color="red">${fn:length(resultList) }</font>个结果
</div>

<%--显示搜索结果--%>
<c:forEach items="${resultList}" var="article" varStatus="status">
    <table class="postList searchArticleResultList" cellspacing="0">
        <tr class="title">
            <td width="20">${status.index + 1}</td>
            <%-- <td><c:out value="${article.title}"/></td> --%>
            <td><html:link action="/article?method=showTopic&topicId=${article.topic eq null ? article.id : article.topic.id}">
            	${article.title}</html:link></td>
        </tr>
        <tr class="content">
            <td/>
            <%-- <td><c:out value="${article.content}"/></td> --%>
            <td>${article.content}</td>
        </tr>
        <tr class="info">
            <td/>
            <td>
                作者：<font color="blue">${article.ipAddr}</font> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <font color="#999999"><fmt:formatDate value="${article.postTime}" pattern="yyyy-MM-dd HH:mm:ss"/></font>
            </td>
        </tr>
    </table>
</c:forEach>

</body>
</html>
