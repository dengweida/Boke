<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!doctype html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/nprogress.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/images/icon.png">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/images/favicon.ico">
<script src="${pageContext.request.contextPath }/js/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath }/js/nprogress.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.lazyload.min.js"></script>
<!--[if gte IE 9]>
  <script src="${pageContext.request.contextPath }/js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath }/js/html5shiv.min.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath }/js/respond.min.js" type="text/javascript"></script>
  <script src="${pageContext.request.contextPath }/js/selectivizr-min.js" type="text/javascript"></script>
<![endif]-->
<!--[if lt IE 9]>
  <script>window.location.href='upgrade-browser.html';</script>
<![endif]-->
</head>
<body class="user-select">
<header class="header">
<nav class="navbar navbar-default" id="navbar">
<div class="container">
  <div class="header-topbar hidden-xs link-border">
	<ul class="site-nav topmenu">
	  <li><a href="#" >标签云</a></li>
		<li><a href="#" rel="nofollow" >读者墙</a></li>
		<li><a href="#" title="RSS订阅" >
			<i class="fa fa-rss">
			</i> RSS订阅
		</a></li>
	</ul>
			 勤记录 懂分享</div>
  <div class="navbar-header">
	<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#header-navbar" aria-expanded="false"> <span class="sr-only"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
	<h1 class="logo hvr-bounce-in"><a href="#" title="木庄网络博客"><img src="${pageContext.request.contextPath }/images/201610171329086541.png" alt="木庄网络博客"></a></h1>
  </div>
  <div class="collapse navbar-collapse" id="header-navbar">
	<form class="navbar-form visible-xs" action="/Search" method="post">
	  <div class="input-group">
		<input type="text" name="keyword" class="form-control" placeholder="请输入关键字" maxlength="20" autocomplete="off">
		<span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
	</form>
	<ul class="nav navbar-nav navbar-right">
	  <li><a data-cont="木庄网络博客" title="木庄网络博客" href="index.html">首页</a></li>
	  <li><a data-cont="列表页" title="列表页" href="list.html">列表页</a></li>
	  <li><a data-cont="详细页" title="详细页" href="show.html">详细页</a></li>
	  <li><a data-cont="404" title="404" href="404.html">404</a></li>
	  <li><a data-cont="MZ-NetBolg主题" title="MZ-NetBolg主题" href="#" >MZ-NetBolg主题</a></li>
	  <li><a data-cont="IT技术笔记" title="IT技术笔记" href="#" >IT技术笔记</a></li>
	  <li><a data-cont="源码分享" title="源码分享" href="#" >源码分享</a></li>
	  <li><a data-cont="靠谱网赚" title="靠谱网赚" href="#" >靠谱网赚</a></li>
	  <li><a data-cont="资讯分享" title="资讯分享" href="#" >资讯分享</a></li>
	</ul>
  </div>
</div>
</nav>
</header>
<section class="container">
<div class="content-wrap">
<div class="content">
  <div id="focusslide" class="carousel slide" data-ride="carousel">
	<ol class="carousel-indicators">
	  <li data-target="#focusslide" data-slide-to="0" class="active"></li>
	  <li data-target="#focusslide" data-slide-to="1"></li>
	</ol>
	<div class="carousel-inner" role="listbox">
	  <div class="item active">
	  <a href="#" target="_blank" title="木庄网络博客源码" >
	  <img src="${pageContext.request.contextPath }/images//201610181557196870.jpg" alt="木庄网络博客源码" class="img-responsive"></a>
	  </div>
	  <div class="item">
	  <a href="#" target="_blank" title="专业网站建设" >
	  <img src="${pageContext.request.contextPath }/images//201610241227558789.jpg" alt="专业网站建设" class="img-responsive"></a>
	  </div>
	</div>
	<a class="left carousel-control" href="#focusslide" role="button" data-slide="prev" rel="nofollow"> <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span class="sr-only">上一个</span> </a> <a class="right carousel-control" href="#focusslide" role="button" data-slide="next" rel="nofollow"> <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span> <span class="sr-only">下一个</span> </a> </div>
  <article class="excerpt-minic excerpt-minic-index">
		<h2><span class="red">【推荐】</span><a target="_blank" href="localhost:8080/jww_ssm/login/toLogin.action" title="用DTcms做一个独立博客网站（响应式模板）" >用DTcms做一个独立博客网站（响应式模板）</a>
		</h2>
		<p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
	</article>
  <div class="title">
	<h3>最新发布</h3>
	<div class="more">                
			<a href="#" title="MZ-NetBlog主题" >MZ-NetBlog主题</a>                
			<a href="#" title="IT技术笔记" >IT技术笔记</a>                
			<a href="#" title="源码分享" >源码分享</a>                
			<a href="#" title="靠谱网赚" >靠谱网赚</a>                
			<a href="#" title="资讯分享" >资讯分享</a>                
		</div>
  </div>
  
  <!-- jquery ias流式分页 -->
<c:forEach items="${list}" var="article">
    <article class="excerpt excerpt-1" style=""><a class="focus" href="#" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" ><img class="thumb" data-original="images/201610181739277776.jpg" src="${pageContext.request.contextPath }/images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: inline;"></a>
		<header><a class="cat" href="#" title="MZ-NetBlog主题" >${article.theme }<i></i></a>
			<h2><a href="${pageContext.request.contextPath }/list/article/${article.id }.action" title="用DTcms做一个独立博客网站（响应式模板）" target="_blank" >${article.title }</a>
			</h2>
		</header>
		<p class="meta">
			<time class="time"><i class="glyphicon glyphicon-time"></i> 2016-10-14</time>
			<span class="views"><i class="glyphicon glyphicon-eye-open"></i> 216</span> <a class="comment" href="##comment" title="评论" target="_blank" ><i class="glyphicon glyphicon-comment"></i> 4</a>
		</p>
		
		<h2><span class="red">作者：</span><a target="_blank" href="${pageContext.request.contextPath }/toView/personlList.action" title="文章作者" >${article.author }</a>
		
		<p class="note">用DTcms做一个独立博客网站（响应式模板），采用DTcms V4.0正式版（MSSQL）。开发环境：SQL2008R2+VS2010。DTcms V4.0正式版功能修复和优化：1、favicon.ico图标后台上传。（解决要换图标时要连FTP或者开服务器的麻烦）</p>
	</article>
</c:forEach>

  <nav class="pagination" style="display: none;">
	<ul>
	 <li class="prev-page"></li>
	  <li class="active"><span>1</span></li>
	    <li><a href="?page=2">2</a></li>
	  <li class="next-page"><a href="${pageContext.request.contextPath }/list/page/${nextPage}.action">下一页</a></li>
	  <li><span> 共 ${pageNum} 页</span></li>
	</ul>
  </nav>






</div>
</div>
<div class="tlinks">Collect from <a href="http://www.cssmoban.com/" >企业网站模板</a></div>
<aside class="sidebar">
<div class="fixed">
  <div class="widget widget-tabs">
	<ul class="nav nav-tabs" role="tablist">
	  <li role="presentation" class="active"><a href="#notice" aria-controls="notice" role="tab" data-toggle="tab" >统计信息</a></li>
	  <li role="presentation"><a href="#contact" aria-controls="contact" role="tab" data-toggle="tab" >联系站长</a></li>
	</ul>
	<div class="tab-content">
	  <div role="tabpanel" class="tab-pane contact active" id="notice">
		<h2>日志总数:
			  888篇
		  </h2>
		  <h2>网站运行:
		  <span id="sitetime">88天 </span></h2>
	  </div>
		<div role="tabpanel" class="tab-pane contact" id="contact">
		  <h2>QQ:
			  <a href="" target="_blank" rel="nofollow" data-toggle="tooltip" data-placement="bottom" title=""  data-original-title="QQ:"></a>
		  </h2>
		  <h2>Email:
		  <a href="#" target="_blank" data-toggle="tooltip" rel="nofollow" data-placement="bottom" title=""  data-original-title="#"></a></h2>
	  </div>
	</div>
  </div>
  <div class="widget widget_search">
	<form class="navbar-form" action="/Search" method="post">
	  <div class="input-group">
		<input type="text" name="keyword" class="form-control" size="35" placeholder="请输入关键字" maxlength="15" autocomplete="off">
		<span class="input-group-btn">
		<button class="btn btn-default btn-search" name="search" type="submit">搜索</button>
		</span> </div>
	</form>
  </div>
</div>
<div class="widget widget_hot">
	  <h3>最新评论文章</h3>
	  <ul>            
			<li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
			<li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
			<li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
			<li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
			<li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
			<li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
			<li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>
			<li><a title="用DTcms做一个独立博客网站（响应式模板）" href="#" ><span class="thumbnail">
				<img class="thumb" data-original="images/201610181739277776.jpg" src="images/201610181739277776.jpg" alt="用DTcms做一个独立博客网站（响应式模板）"  style="display: block;">
			</span><span class="text">用DTcms做一个独立博客网站（响应式模板）</span><span class="muted"><i class="glyphicon glyphicon-time"></i>
				2016-11-01
			</span><span class="muted"><i class="glyphicon glyphicon-eye-open"></i>88</span></a></li>

	  </ul>
 </div>
 <div class="widget widget_sentence">    
	<a href="#" target="_blank" rel="nofollow" title="专业网站建设" >
	<img style="width: 100%" src="images//201610241224221511.jpg" alt="专业网站建设" ></a>    
 </div>
 <div class="widget widget_sentence">    
	<a href="#" target="_blank" rel="nofollow" title="MZ-NetBlog主题" >
	<img style="width: 100%" src="images/ad.jpg" alt="MZ-NetBlog主题" ></a>    
 </div>
<div class="widget widget_sentence">
  <h3>友情链接</h3>
  <div class="widget-sentence-link">
	<a href="#" title="网站建设" target="_blank" >网站建设</a>&nbsp;&nbsp;&nbsp;
  </div>
</div>
</aside>
</section>
<footer class="footer">
<div class="container">
<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
</div>
<div id="gotop"><a class="gotop"></a></div>
</footer>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.ias.js"></script>
<script src="${pageContext.request.contextPath }/js/scripts.js"></script>
</body>
</html>
