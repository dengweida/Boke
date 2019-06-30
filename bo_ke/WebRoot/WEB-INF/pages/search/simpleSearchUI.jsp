<%@ page language="java" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>


<div style="margin: 15px auto; ">
<%-- 搜索表单 --%>
<html:form action="/searchArticle?method=search" styleClass="simpleSearchForm">
    <font class="logoLabel">传智播客贴吧</font>
    <html:text property="queryString" styleClass="queryString"/>
	<html:submit value="搜 索"/>
</html:form>
</div>