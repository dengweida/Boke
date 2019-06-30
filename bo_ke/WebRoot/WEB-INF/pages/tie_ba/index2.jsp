<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>文华校友网--校吧</title>
	<meta name="keywords" content="文华校友网--校吧"/>
	<meta name="description" content="文华校友网--校吧"/>
	<link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath }/tie_ba/image/index/favicon.ico"   media="screen" />

	<link href="${pageContext.request.contextPath }/tie_ba/css/index/common.css-2.css"   rel="stylesheet" type="text/css" />
	<!--[if (IE 6)|(IE 7)|(IE 8)]>
	<script type="text/javascript" src="js/index/PIE_IE678.js"  ></script> 
	<![endif]-->
	<script type="text/javascript" src="${pageContext.request.contextPath }/tie_ba/js/index/jquery.min.js"   language="javascript"></script>
	<link href="${pageContext.request.contextPath }/tie_ba/css/index/style.css"   rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="${pageContext.request.contextPath }/tie_ba/js/index/comment.js"  ></script> 
	<script type="text/javascript" src="${pageContext.request.contextPath }/tie_ba/js/index/tool.js"   language="javascript"></script>
	<link href="${pageContext.request.contextPath }/tie_ba/css/index/default.css"   type="text/css" rel="stylesheet"/>
	<script type="text/javascript" src="${pageContext.request.contextPath }/tie_ba/js/index/ajax.js"   language="javascript" ></script>
	<script type="text/javascript" src="${pageContext.request.contextPath }/tie_ba/js/index/json2.js"   language="javascript" ></script>
	<link href="${pageContext.request.contextPath }/tie_ba/css/index/layer.css"    type="text/css" rel="stylesheet"/>
	<script type="text/javascript" src="${pageContext.request.contextPath }/tie_ba/js/index/layer.js"   language="javascript"></script>
	
	<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/uedi/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/uedi/ueditor.all.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/uedi/lang/zh-cn/zh-cn.js"></script>

 <link rel="stylesheet" href="${pageContext.request.contextPath }/tie_ba/css/index/layui.css">
 

 <script>
    function changeColor(id,val)
             {
                if(val=="over")
                {
                    document.getElementById(id).style.backgroundColor="#eeeeee36";
                }else if(val=="out")
                {
                     document.getElementById(id).style.backgroundColor="white";
                 }    
            }
         </script>

</head>
<body>
<div class="headerModule">
	<div class="box">
		<a href="" class="logo" name="top"><!--返回到顶部name=top-->
			<img alt="LOGO" src="${pageContext.request.contextPath }/tie_ba/image/index/logo.gif"   >
		</a>
<div class="nav">
	<ul class="clearfix">
			<li><a href="#"  >首页</a></li>
			<li><a   >GIF图片字幕制作</a></li>
	</ul>
</div>

		<div class="head-search">
			<form action="search-keyword=.htm"   method="get">
				<input name="keyword" value="" placeholder="搜索">
				<input type="submit" class="sub-button">
			</form>
		</div>
		<div class="menu" >
			<ul class="clearfix">
					<li><a   >注册</a></li>
					<li><a   >登录</a></li>
			</ul>
		</div>
	</div>
</div>


<div class="fixedBottom wrap clearfix">
	
	<div class="tabModule">
		<a href="" class='tab_current'>全部</a>
			<a href="-tagId=26322939661348.htm"    class='tab'>综合</a>
			<a href="-tagId=26315816450947.htm"    class='tab'>玩机技巧</a>
			<a href="-tagId=26037571205829.htm"    class='tab'>测评晒单</a>
			<a href="-tagId=26315813050946.htm"    class='tab'>第三方配件</a>
			<a href="-tagId=26315802650945.htm"    class='tab'>公告</a>
			<a href="-tagId=25285555508571.htm"    class='tab'>求助</a>
			<a href="-tagId=26315839750948.htm"    class='tab'>功能建议</a>
 <a class="layui-btn" lay-filter="*" href="#goto">发布新帖</a>
 
	</div>	
	


<div class="topicModule">
<table cellspacing="0" cellpadding="0">  

  <c:forEach items="${allTie}" var="allTie">
			<tbody>               
				<tr onmouseover="changeColor('${allTie.t_id}','over')" id="${allTie.t_id}" onmouseout="changeColor('${allTie.t_id}','out')">
		    		<th> 
				        <div class="avatarBox">
				            <a class="avatarLink"  href="${pageContext.request.contextPath }/tie_ba/toPersonl.action?t_resultSnumber=${allTie.t_resultSnumber}" >
				            <c:if test="${ not empty allTie.t_image1 }">
									<img src="${allTie.t_image1}"  >
							</c:if>
				            </a>   
				        </div>
				        <div class="content">
				            <a href="${pageContext.request.contextPath }/tie_ba/toListZheng.action?t_id=${allTie.t_id}"   class="title">
					          	<span>${allTie.t_title }</span>
							</a>
							<div class="clear"></div>
							<div class="info clearfix">
				
								<a href="javascript:;" class="clear">
									<em class="replies">0</em>
									<img class="images" src="${pageContext.request.contextPath }/tie_ba/image/index/comment.png"   style="float: right;*margin-top: 26px;" alt=""/>
								</a>
				
								<a href="personlindex.html" class="view" style="*margin-top: 20px;">
									<img class="images" src="${pageContext.request.contextPath }/tie_ba/image/index/pageview.png"   alt="" style="float: left;"/>865
								</a>
								<span class="tag">综合</span>
								<em>  
				                	<a   >
					           			<span style="display:inline-block;margin-left: 7px;">
					                    	${allTie.t_resultSnumber}
					                    </span>
				                    </a>
				                </em>
				                <em>发表时间：<fmt:formatDate value="${allTie.t_date}" pattern="yyyy年MM月dd日  HH:mm:ss"/></em>
							</div>
						</div>
						<div style="margin-left: 82px; position: relative;">
			                	<div class="tm-m-photos topic_thumbnail_${allTie.t_id}">
									<c:if test="${ not empty allTie.t_image1 }">
									<ul class="tm-m-photos-thumb">
											<li data-src="${allTie.t_image1}"  ><div class="img" style="background-image: url(${allTie.t_image1})/*tpa=http://bbs.diyhi.com/file/topic/2018-11-23/image/120x120/4181555a14b94d0fbfbaa4b03b3aaf8cb2.png*/"></div> <b class="tm-photos-arrow"></b> </li>		
									<c:if test="${ not empty allTie.t_image2 }">
									<li data-src="${allTie.t_image2}"  ><div class="img" style="background-image: url(${allTie.t_image2})/*tpa=http://bbs.diyhi.com/file/topic/2018-11-23/image/120x120/4181555a14b94d0fbfbaa4b03b3aaf8cb2.png*/"></div> <b class="tm-photos-arrow"></b> </li>		
									</c:if>
									<c:if test="${ not empty allTie.t_image3 }">
									<li data-src="${allTie.t_image3}"  ><div class="img" style="background-image: url(${allTie.t_image3})/*tpa=http://bbs.diyhi.com/file/topic/2018-11-23/image/120x120/4181555a14b94d0fbfbaa4b03b3aaf8cb2.png*/"></div> <b class="tm-photos-arrow"></b> </li>		
									</c:if>
									</ul>
									</c:if>
									<div class="tm-m-photo-viewer transition1 topic_original_${allTie.t_id}" style="margin-bottom:  -10px;"> 
										<img src="image/index/null.gif"  > 
										<a class="tm-m-photo-viewer-navleft navleft_${allTie.t_id}" style="cursor: default;"> <i class="tm-m-photo-viewer-navicon">&lt;</i> </a> 
										<a class="tm-m-photo-viewer-navright navright_${allTie.t_id}" style="cursor: pointer;"> <i class="tm-m-photo-viewer-navicon">&gt;</i> </a> 
									</div>
								</div>
		                </div>
						<script>
							
							$(function () {
							var s=${allTie.t_id};
								new commentMove(".topic_thumbnail_"+s,".topic_original_"+s,s).init();
								
							
						    })
						</script>
					</th>    
		        	<td></td>
				</tr>
			</tbody>     
			
	</c:forEach>		
			</table>
<div class="topicPage">

<DIV class="pg">
	<span class="count">共${page.total}条</span>  
    
                <c:if test="${page.pageNum>1}">
                <A href="javascript:topage('${page.prePage}')" title="第2页">${page.prePage}</A>  
                </c:if>
                
                <STRONG>${page.pageNum}</STRONG>  
                
                 <c:if test="${page.pageNum!=page.lastPage}">
                <A href="javascript:topage('${page.nextPage}')" title="第2页">${page.nextPage}</A>  
                </c:if>
                <c:if test="${page.nextPage<page.lastPage &&page.nextPage!=0}">
                <A href="javascript:topage('${page.nextPage+1}')" title="第2页">${page.nextPage+1}</A>  
                </c:if>
                
    <LABEL>
		<INPUT onkeydown="if(event.keyCode==13) {topage(this.value);}" class="pg_input" title="输入页码，按回车跳转" value="${page.pageNum}" size="2">
		<SPAN title="共2页"> / ${page.pages}页</SPAN>
	</LABEL>
	<c:if test="${page.pageNum!=1}">
	    <A class="prev" href="javascript:topage('${page.prePage}')"  >上一页</A>
	    </c:if>
	   <c:if test="${page.pageNum!=page.lastPage}">
    	<A  href="${pageContext.request.contextPath }/tie_ba/toPage.action?pn=${page.nextPage}"  >下一页</A>  
       </c:if>
</DIV>
</div>

</div>
       
		<div class="addCommentModule" >
			<div class="respond">
				<p style="font-size:13px;padding:8px;text-align:center;background:#eee;overflow:hidden">文华校友吧
				<a   ></a> 
					请文明发帖
					<a   ></a>
				</p>
			</div>
		</div>



<div class="main layui-clear" >
 
 <div class="fly-panel" pad20>
   <a name="goto"></a> 
 <h2 class="page-title">发贴</h2>
   
  
  <!-- <div class="fly-none">并无权限</div> -->

  
  <div class="layui-form layui-form-pane">
    
  <form action="${pageContext.request.contextPath }/addContent/toAddContent.action" method="post">
        
      <div class="layui-form-item">
         
    <label for="L_title" class="layui-form-label">标题</label>
         
   <div class="layui-input-block">
           
     <input type="text" id="L_title" name="t_title" required lay-verify="required" autocomplete="off" class="layui-input">
          
</div>
       
 </div>
        
<div class="layui-form-item layui-form-text">
        
  <div class="layui-input-block">
             
    <div class="editor">
    <input name="t_resultSnumber" type="hidden" value="150106000182">
    	<input name="content" id="content"type="hidden" value="">		
       <textarea id="editor" type="text/plain"  style="width:950px;height:450px;" required lay-verify="required"></textarea>
  			
 </div>
     
     </div>
      

    </div>
       
 <div class="layui-form-item">
   
     
  </div>
 
       
 </div>
      
  <div class="layui-form-item">
         
 <button class="layui-btn" lay-filter="*" lay-submit onclick="uptext()">立即发布</button>
        </div>
     
 </form>

</div>
  
</div>

</div>

 







    

		
    <div class="clear"></div>
	<div class="push"><!-- 把div#footer推下去 --></div>
</div>
<div class="footer">
    <div class="message">

	</div>
	<div class="copyright">Powered by <a target="_blank"    class="link">diyhi</a>
	<a target="_blank" href="feedback.htm"  >联系我们</a>
	</div>	
</div>
<a    id="pop_backButton" class="backButton" href="#top">返回顶部</a>
<style type="text/css">
	/* 返回按钮 */
	.backButton:before{ position: absolute; content: " "; border: transparent 14px solid; border-width: 13px 8px ; border-right-color: #26a3ff; top: 1px; left: -16px; height: 0; width: 0; }
	.backButton{ position:absolute;bottom:10px; right:10px; width: 96px; height: 28px; background: #06b5ff; border-radius: 5px; text-align: center; line-height: 28px; color: #fff; font-size: 14px; border: 1px solid #26a3ff; }
	.backButton:after{ position: absolute; content: " "; border: transparent 13px solid;  border-width:  12px 8px; border-right-color: #06b5ff; top: 2px; left: -15px; height: 0; width: 0; }
	.backButton:hover{color: #fff; font-size: 14px; font-weight:bold;}  
	.backButton:link {color: #fff; font-size: 14px;}
</style>	
<script type="text/javascript">
$(window).scroll(function(){
	//浮动层固定右下角
		var high = 100;
        document.getElementById('pop_backButton').style.top = document.documentElement.clientHeight + (document.documentElement.scrollTop || document.body.scrollTop) - high +'px';  
});








</script>
    <!-- 富文本编辑器脚本开始 -->
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
	
	UE.getEditor('editor', {
toolbars: [
['source', 'undo', 'redo', 'simpleupload','emotion','scrawl','spechars','|','preview','cleardoc','fullscreen']
]
});
function uptext(){
    if (!UE.getEditor('editor').hasContents()){
    alert('请先填写内容!');
    }else{
    document.getElementById("content").value=UE.getEditor('editor').getContent();
    document.setweb.submit();
    }
    }
</script>
</body>
</html>




