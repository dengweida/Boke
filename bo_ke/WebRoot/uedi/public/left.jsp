<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Frame left</title>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<% 
response.setHeader("Cache-Control","no-store"); 
response.setHeader("Pragrma","no-cache"); 
response.setDateHeader("Expires",0); 
%>
	<script type="text/javascript" src="${pageContext.request.contextPath }/sys/style/js/jquery.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/sys/style/js/page_common.js"></script>
    <link href="${pageContext.request.contextPath }/sys/style/css/common_style_blue.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		// 显示或隐藏二级菜单 
		function menuClick( menuDiv ){
			$(".MenuLevel2").not( $(menuDiv).next() ).hide();
			$(menuDiv).next().toggle();
		}
		
		$(function(){
			// 默认只显示第1个二级菜单
			$(".MenuLevel2").hide();
			$(".MenuLevel2:first").show();
		});
	</script>

	
	
	
	<!-- 内容总宽度为 3px边框 * 2 + 155px内容 = 161px; -->
	<style type="text/css">
<!--
html{
height: 100%;
}
body {
	background: none repeat scroll 0 0 #D8EDFC;
	margin: 0;
	padding: 0;
}
#Menu {
    margin: 0;
    padding: 0;
    width: 190px;
	background: none repeat scroll 0 0 #D8EBF7;
    list-style: none outside none;
	
	margin-left: 3px;
	border-top: 3px solid #4891C6;
}
#Menu .level1 {
 color: #005790;
    font-weight: bold;
    padding-bottom: 1px;
	  cursor: pointer;
}
#Menu .level1 .level1Style {
  background: url("${pageContext.request.contextPath }/sys/style/images/img/menu_btn_bg.gif") no-repeat scroll 0 0 transparent;
    height: 23px;
    padding-left: 10px;
    padding-top: 5px;
    width: 190px;
	margin-bottom: -4px
}
#Menu .level1 .level1Style .Icon {
	margin-top: -2px;
}
#Menu .level1 .MenuLevel2 {
 background: none repeat scroll 0 0 #D8EBF7;
    list-style: none outside none;
    margin: 0;
    padding: 0;
}
#Menu .level1 .MenuLevel2 .level2Style{
	color: #005790;
	font-weight: bold;
	border-top: 1px solid #EFF6FB;
	height: 40px;
	padding-left: 43px;
	padding-top: 9px;
	width: 190px;
	background-image:url(${pageContext.request.contextPath }/sys/style/images/img/menu_arrow_single.gif);
	background-color: #8EC4E9;
	background-repeat: no-repeat;
	background-position: 29px center;
	font-family: "黑体";
	
	
}

#Menu a:link{
text-decoration:none;
font-size:20px;
color:blue;
}

#Menu a:active {
				text-decoration: none;
				color: red;
			}

-->
	</style>
</head>
<c:if test="${not empty u.username}">
<body>
	
    <ul id="Menu">
	    <li class="level1">
            <div onClick="menuClick(this);" class="level1Style">
				<img src="${pageContext.request.contextPath }/sys/style/images/func20001.gif" class="Icon" /> 
				新闻后台管理
			</div>
            <ul class="MenuLevel2">
            <c:if test="${u.role==2}">
            	<li class="level2 level2Style">
                    <a target="right" href="${pageContext.request.contextPath }/sys/headAdminSet.jsp">总管理员设置</a>
				</li>
				<li class="level2 level2Style">
                	<a target="right" href="${pageContext.request.contextPath }/sys/AdminSet.jsp">普通管理员设置</a>
				</li>
                <li class="level2 level2Style">
                	<a target="right" href="${pageContext.request.contextPath }/sys/adminRegister.jsp">添加新的管理员</a>
				</li>
                <li class="level2 level2Style">
                	<a target="right" href="${pageContext.request.contextPath }/sys/addNews.jsp">新闻类型管理</a>	    
				</li>
				<li class="level2 level2Style">
                	<a target="right" href="${pageContext.request.contextPath }/sys/updatenews.jsp">总管理员新闻管理</a>
				</li>
				</c:if>
               <li class="level2 level2Style">
                	<a target="right" href="${pageContext.request.contextPath }/sys/personnews.jsp">个人新闻管理</a>
				</li>
				<li class="level2 level2Style">
                	<a target="right" href="${pageContext.request.contextPath }/sys/index.jsp">新闻发布</a>
				</li>
				<li class="level2 level2Style">
                	<a target="right" href="${pageContext.request.contextPath }/#">链接管理</a>
				</li>
				<li class="level2 level2Style">
                	<a target="right" href="${pageContext.request.contextPath }/#">查看新闻人物</a>
                </li>
                <li class="level2 level2Style">
                	<a target="right" href="${pageContext.request.contextPath }/sys/headAdminPwdUpdate.jsp">管理员密码修改</a>
				</li>
                <li class="level2 level2Style">
                	<a target="main" href="${pageContext.request.contextPath }/esclogin">退出后台</a>
				</li>
				
           
       
    </ul>
</body>
</c:if>
<c:if test="${empty u.username }">
	   <script type="text/javascript">
    alert("请 先 登 陆 ！");
    window.location.href = "${pageContext.request.contextPath }/syslogin.jsp";
</script>
	</c:if>
</html>