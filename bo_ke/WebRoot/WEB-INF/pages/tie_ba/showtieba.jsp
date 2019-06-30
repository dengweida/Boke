<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<head>
<title>v1.0版本发布了-源码+sql文件-javaee论坛</title>
<meta name="keywords" content="v1.0版本发布了-源码+sql文件" /> 
<meta name="description" content="" /> 
<link rel="stylesheet" type="text/css" href="css/showtieba/style_common.css"/>
<link rel="stylesheet" type="text/css" href="css/showtieba/tubiao.css"/>
<link rel="stylesheet" type="text/css" href="css/showtieba/style_viewthread.css" /> 
<link rel="stylesheet" type="text/css" href="css/showtieba/style.css"/>
<script type="text/javascript" src="js/showtieba/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="js/showtieba/javaee.js"></script>
 <script type="text/javascript" src="js/showtieba/layer.js"></script>
 <script src="js/showtieba/pace.min.js"  ></script>
 <script src="js/showtieba/common.js"   type="text/javascript"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/tie_ba/js/showtieba/tool.js"   language="javascript"></script>

<script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/uedi/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/uedi/ueditor.all.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/uedi/lang/zh-cn/zh-cn.js"></script>


<script type="text/javascript">
function showhidediv(){
	$("#login_user_menu").slideToggle('fast');
}
</script>
<script type="text/javascript">


function geteditorhtml(){
	 var editorhtml=UE.getEditor('myEditor').getContent();
	 var editortxt=UE.getEditor('myEditor').getContentTxt();
	 if(editorhtml==""){
		 alert("请输入内容");
		 UE.getEditor('myEditor').focus();
		 return;
	 }
	 var param={};
	 param.editorhtml=editorhtml;
	 param.editortxt=editortxt;
	 param.id=33;
	 $.ajax({
		   type: "POST",
		   url: javaeepath+"/tz/addhuifu.do",
		   data: param,
		   dataType: "json", 
		   async: false,
		   success: function(data){
			   if(data==1){
				   window.location.reload();				   
			   }else if(data==0){
				   alert("该板块不允许发表回复");
			   }else{
				   alert("系统错误");
			   }
		   }
	 });
}




function addhuifu(huifuid){
	var id='33';
	layer.open({
		  type: 2,
		  title: '发表回复',
		  shadeClose: true,
		  shade: 0.8,
		  area: ['903px', '358px'],
		  content: '/tz/toaddhuifu.do?id='+ id+'&huifuid='+huifuid
		}); 
	$(".layui-layer-iframe").css('top',100);
}

function yidongztree(){
	var id='33';
	layer.open({
		  type: 2,
		  title: '移动板块',
		  shadeClose: true,
		  shade: 0.8,
		  area: ['303px', '358px'],
		  content: '/moderator/common/ztreeyidong.do?id='+id
		}); 
	//有的浏览器高度设置有问题 所以特此定义一下
	$(".layui-layer-iframe").css('top',100);
}
</script>
</head>
 <body class="pg_index">
 









   
 <!-- 弹出页面 -->
<div id="append_parent"></div> 
  <div id="toptb" class="cl"> 
   <div class="wp"> 
    <div class="z"> 
     <a href=""   title="javaee论坛"><img src="image/index/logo.gif"   alt="javaee论坛"  style="margin-left:80px";width="180"/></a> 
    </div> 
    <div class="z qing_toptb"> 
     <ul> 
      <li id="mn_portal"><a href=""   title="论坛">首页<span>论坛</span></a></li> 
     </ul> 
    </div> 
    <div class="y"> 
     <div class="qing_no_login cl"> 
     	
     
      <a href=""  >登录</a> 
      <a href=""   >立即注册</a> 
     
     </div> 
     <div id="scbar" class="qing_search cl" style="display: none;"> 
      <form id="scbar_form" method="post" action="" target="_blank"> 
       <div class="qing_search_type"> 
        <a href="javascript:;" id="scbar_type" onClick="showMenu(this.id)">搜索</a> 
       </div> 
       <div class="qing_search_txt"> 
        <input type="text" name="srchtxt" id="scbar_txt" value="请输入搜索内容" /> 
       </div> 
       <div class="qing_search_btn"> 
        <button type="submit" name="searchsubmit" id="scbar_btn" value="true"></button> 
       </div> 
      </form> 
     </div> 
    </div> 
    <div class="y qing_toptb"> 
    </div> 
   </div> 
  </div> 
  
   <div id="wp" class="wp">
   <div id="diynavtop" class="area"></div>
   <div id="pt" class="bm cl"> 
    <div class="z"> 
     <a href="index.htm"   class="nvhm" title="首页">首页</a>
     <em>›</em> 
     <a href=""  >论坛</a> 
     <em>›</em> 
     <a href=""  >论坛源码</a> 
     <em>›</em> 
     <a href="33_1_1.html"  >v1.0版本发布了-源码+sql文件</a> 
    </div> 
    <div class="y"> 
     <a href="${pageContext.request.contextPath }/tie_ba/toPage.action?#goto"   id="newspecial" title="发新帖" class="qing_f_post">发新帖</a> 
     <a id="post_reply" onClick="" href="#fastposteditor" title="回复" class="qing_f_reply">回复</a> 
    </div> 
   </div> 
   <div class="wp"> 
    <div id="diy1" class="area"></div>
   </div> 
   <div id="ct" class="wp cl"> 
    <div id="postlist" class="pl"> 
     <table cellspacing="0" cellpadding="0" class="ad">
      <tbody>
       <tr>
        <td class="pls"></td>
        <td class="plc"></td>
       </tr>
      </tbody>
     </table>
     <div id="post_240">
      <table id="pid240" summary="pid240" cellspacing="0" cellpadding="0"> 
       <tbody>
        <tr> 
         <td class="pls"> 
          <div> 
           <div class="avatar" >
            <a href="personlindex.html"   target="_blank"><img src="2017051617104181181998.GIF"   /></a>
           </div> 
           <div class="qing_pi"> 
            <div class="authi">
             <a href="personlindex.html"   target="_blank" class="xw1" style="color: #cc0000" >${tie_show.user.resultSname }</a> 
            </div> 
           </div> 
           <div class="qing_v_card"> 
            <p><em style="color: #cc0000" >${tie_show.user.resultSmajor }</em></p> 
            <p><em style="color: #cc0000" >  ${tie_show.user.resultSstarttime }级</em></p>
             <div class="VIP15"></div>
            <div class="qcard">
             <div class="tns xg2">
              <table cellspacing="0" cellpadding="0">
               <tbody>
                <tr>
                 <th><p><a href=""   class="xi2">94</a></p>帖子</th>
                 <th><p><a href="" class="xi2">123</a></p>回复</th>
                 <td><p><a href="" class="xi2">10403</a></p>积分</td>
                </tr>
               </tbody>
              </table>
             </div>
            </div> 
            <p><span class="pbg2" ><span class="pbr2" style="width:36%;"></span></span></p> 
            <div id="g_up240_menu" class="tip tip_4" style="display: none;">
             <div class="tip_horn"></div>
             <div class="tip_c">
              <!-- 演示组, 积分 372, 距离下一级还需 628 积分 -->
             </div>
            </div> 
           </div>
          </div> </td> 
         <td id="plc_240" class="plc"> 
          <div class="mtm pbm bbda"> 
           主题：<h1 class="ts" style="color:blue;">${tie_show.t_title}</h1> 
           <span class="xg1"> </span> 
          </div> 
          <div class="pi"> 
           <strong class="xg1"> <a href="javascript:;" title="楼主" >楼主</a> </strong> 
           <div class="pti"> 
            <div class="pdbt"> 
            </div> 
            <div class="authi xg1"> 
             <em id="authorposton240">发表于：<fmt:formatDate value="${tie_show.t_date }" pattern="yyyy年MM月dd日 hh:mm:ss"/></em>
             <span class="pipe">|</span> 查看: 1211
             <span class="pipe">|</span> 回复: 9
            </div> 
           </div> 
          </div>
          <div class="pct"> 
           <style type="text/css">.pcb{margin-right:0}</style>
           <div class="pcb"> 
            <div class="t_fsz"> 
             <table cellspacing="0" cellpadding="0">
              <tbody>
               <tr>
                <td class="t_f" style="overflow: hidden;"> 
                ${tie_show.content }<br /> 
                 </td>
               </tr>
              </tbody>
             </table> 
            </div> 
           </div>
          </div> 
          <!-- <table>
           <tbody>
            <tr>
             <td> 
              <div class="sign" style="max-height:100px;maxHeightIE:100px;">
               <a href="http://www.dzzsk.com/demo/simple/static/image/smiley/default/smile.gif" target="_blank">http://www.dzzsk.com/demo/simple/static/image/smiley/default/smile.gif</a>
              </div> </td>
            </tr>
           </tbody>
          </table>  -->
                          
          <div class="po"> 
           <div class="pob cl">
				<p>
				
				
				</p>
			</div>
          </div> 
          
          <div id="comment_237">
	          	<div class="cmtl xld xlda">
					<dl class="cl">
						<dd></dd>
					</dl>
				</div>
			</div>
		
		 
          <div id="comment_240">
           <div id="cmtform_240"></div>
          </div> </td> 
        </tr> 
        <tr>
        <td class="pls "></td>
        <td>
        <div style="float: right;margin-top: 10px;margin-right: 10px;">
        
        <em>上一篇：<a href="3216_1_1.html"   style="color:#3399CC">java论坛源码v1.1版本发布 代码+sql文件</a></em>
        
        
        </div>
        </td>
        </tr>
         
        
        <tr class="ad"> 
         <td class="pls"></td> 
         <td class="plc" > 
         <a name="paixu"></a>
          <ul class="ttp cl"> 
          
           <li class="xw1 a" ><a href="${pageContext.request.contextPath }/tie_ba/toListZheng.action?t_id=${tie_show.t_id}#paixu"  >正序浏览</a></li> 
           <li class="xw1 " ><a href="${pageContext.request.contextPath }/tie_ba/toListDao.action?t_id=${tie_show.t_id}#paixu"  >倒序浏览</a></li> 
          </ul> </td> 
        </tr> 
        
       </tbody>
      </table> 
     </div>
     <div >
      <table  cellspacing="0" cellpadding="0"> 
       <tbody>
       
       
       
       
       
       
       
       
       
       
       
     <c:forEach items="${tieba_reply}" var="tieba_reply" varStatus="status">    
        <tr> 
         <td class="pls"> 
          <div> 
           <div class="avatar" onMouseOver="showauthor(this, '${tieba_reply.t_reply_id}')">
             <a href=""   target="_blank"><img src="touxiang.jpg"   /></a>
           </div> 
           <div class="qing_pi"> 
            <div class="authi">
             <a href=""   target="_blank" class="xw1" style="color: #CC3333">${tieba_reply.user.resultSname }</a> 
            </div> 
           </div> 
           <div class="qing_v_card"> 
            <p><em><font >${tieba_reply.user.resultSmajor }</font></em></p>
            <p><em><font >${tieba_reply.user.resultSstarttime }</font></em></p> 
            <div class="VIP1"></div>
            <div class="qcard">
             <div class="tns xg2">
              <table cellspacing="0" cellpadding="0">
               <tbody>
                <tr>
                 <th><p><a href=""   class="xi2">0</a></p>帖子</th>
                 <th><p><a href="" class="xi2">1</a></p>回复</th>
                 <td><p><a href="" class="xi2">3</a></p>积分</td>
                </tr>
               </tbody>
              </table>
             </div>
            </div> 
           </div>
          </div> </td> 
         <td id="plc_257" class="plc"> 
          <div class="pi"> 
          <c:if test="${status.index+1 == 1}">
           <strong class="xg1">
           <a href="javascript:;" title="" ><em>沙发</em><sup>#</sup></a>
           </strong> 
          </c:if>
           <c:if test="${status.index+1 == 2}">
           <strong class="xg1">
             <a href="javascript:;" title="" ><em>椅子</em><sup>#</sup></a>
            </strong> 
              </c:if>
            <c:if test="${status.index+1 == 3}">
           <strong class="xg1">
             <a href="javascript:;" title="" ><em>板凳</em><sup>#</sup></a>
            </strong> 
              </c:if>
            <c:if test="${status.index+1 > 3}">
           <strong class="xg1">
             <a href="javascript:;" title="" ><em>${status.index+1}</em><sup>#</sup></a>
            </strong> 
              </c:if>
                    
           <div class="pti"> 
            <div class="pdbt"> 
            </div> 
            <div class="authi xg1"> 
              <em id="authorposton257">发表于：<fmt:formatDate value="${tieba_reply.t_reply_date}" pattern="yyyy年MM月dd日  HH:mm:ss"/></em> 
            </div> 
           </div> 
          </div>
          <div class="pct"> 
           <div class="pcb"> 
            <div class="t_fsz"> 
             <table cellspacing="0" cellpadding="0">
              <tbody>
               <tr>
                <td class="t_f" style="overflow: hidden;" >
                
                 ${tieba_reply.t_reply_content}
                </td>
               </tr>
              </tbody>
             </table> 
            </div> 
           </div>
          </div> 
          <div id="po_257" class="po"> 
           <div class="pob cl"> 
            <p> 
           
           
           	
            </p> 
           </div> 
          </div> 
          <div id="comment_257">
           <div id="cmtform_257"></div>
          </div> </td> 
        </tr> 
        <tr class="ad"> 
         <td class="pls"></td> 
         <td class="plc"> </td> 
        </tr>          
      </c:forEach>  
        
        
        
        
        
       </tbody>
      </table> 
     </div>
    </div> 
    <div class="pgs mtm mbm cl"> 
     <div class="pgt"></div> 
     
    
     <!-- 分页框 --> 
     <DIV class="pg">
 <A href="${pageContext.request.contextPath }/tie_ba/toPage.action" title="第2页">返回列表</A>  
	<span class="count">共${totalCounts}条</span>  
	
	<c:if test="${pn>1&&pn <= Math.ceil(totalCounts/5)}">
	<A href="javascript:topage('${pn-1}')" title="第2页">${pn-1}</A> 
	</c:if>
	<c:if test="${pn>Math.ceil(totalCounts/5) &&Math.ceil(totalCounts/5)!=0}">
	<A href="javascript:topage('${Math.ceil(totalCounts/5)-1}')" title="第2页">${Math.ceil(totalCounts/5)-1}</A> 
	</c:if>
	<c:if test="${pn <=Math.ceil(totalCounts/5)}">
                <STRONG>${pn}</STRONG>  
     </c:if>
     <c:if test="${pn > Math.ceil(totalCounts/5)}">
                <STRONG>${Math.ceil(totalCounts/5)}</STRONG>  
     </c:if>
                <c:if test="${pn+1<=Math.ceil(totalCounts/5)}">
                <A href="javascript:topage('${pn+1}')" title="第2页">${pn+1}</A>  
                </c:if>
                <c:if test="${pn+2 < Math.ceil(totalCounts/5)}">
                <A href="javascript:topage('${pn+2}')" title="第2页">${pn+2}</A>  
                </c:if>
    <LABEL>
		<INPUT onkeydown="if(event.keyCode==13) {topage(this.value);}" class="pg_input" title="输入页码，按回车跳转" value="1" size="2">
		<SPAN title="共2页"> / ${Math.ceil(totalCounts/5)}页</SPAN>
	</LABEL>
	<c:if test="${Math.ceil(totalCounts/5)>pn && pn>1 }">
	    <A class=nxt href="javascript:topage('${pn-1}')"  >上一页</A>
	 </c:if>
	
	 <c:if test="${Math.ceil(totalCounts/5)<pn &&Math.ceil(totalCounts/5)!=0}">
	    <A class=nxt href="javascript:topage('${Math.ceil(totalCounts/5)-1}')"  >上一页</A>
	 </c:if>
	 <c:if test="${pn+1 < Math.ceil(totalCounts/5)}">
    	<A class=nxt href="javascript:topage('${pn+1}')"  >下一页</A>  
    </c:if>
</DIV>
     
    
    
     <div id="diyfastposttop" class="area"></div>
    <div id="f_pst" class="pl mbm"> 
    
    <!-- 发帖文件框 -->
    <form action="${pageContext.request.contextPath }/addReply/toAddReply.action">
      <table cellspacing="0" cellpadding="0"> 
       <tbody>
        <tr> 
         <td class="pls"> 
          <div class="avatar">
           <img src="touxiang.jpg"   />
          </div> </td> 
         <td class="plc"> <span id="fastpostreturn"></span> 
         <div class="cl">
		<div id="fastsmiliesdiv" class="y"><div id="fastsmiliesdiv_data"><div id="fastsmilies"></div></div></div><div class="hasfsl" id="fastposteditor">
		<div class="tedt mtn">
		<div class="bar">	
		<label>文明回帖</label>
		</div>
		<div class="area">
			<!-- <div class="pt hm">
			您需要登录后才可以回帖 <a href=""    class="xi2">登录</a> | <a href=""   class="xi2">立即注册</a>
			</div> -->
		<input name="t_id" type="hidden" value="${tie_show.t_id }">	
		<input name="t_reply_resultSnumber" type="hidden" value="150106000182">
    	
    	<input name="t_reply_content" id="t_reply_content"type="hidden" value="">		
       <textarea id="editor" type="text/plain"  style="width:875px;height:250px;" required lay-verify="required"></textarea>
			
		</div>
		</div>
		</div>
		</div>
         
           <p class="ptm pnpost"> 
           <button type="submit" onclick="uptext()" class="pn pnc vm" ><strong>发表回复</strong></button>  
             </p> </td> 
        </tr> 
       </tbody>
      </table> 
 </form>     
     <!-- 发帖文件框 --> 
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
    document.getElementById("t_reply_content").value=UE.getEditor('editor').getContent();
    document.setweb.submit();
    }
    }
</script>    
     
     
    </div> 
   </div> 
  </div>

<div id="ft" class="qing_foot cl"> 
   <div class="wp cl"> 
    <div id="flk" class="z"> 
     <p>
     <a href=""  >触屏版</a><span class="pipe">|</span><a href=""  >电脑版</a>
      </p> 
    </div> 
    <div id="frt" class="y"> 
     <p>技术支持 <a href=""   target="_blank">JAVAEE</a> <em>V2.0</em> &copy; 2016-2017
     <script src="z_stat.php-id=1261861747&web_id=1261861747.js"   language="JavaScript"></script>
     </p> 
    </div> 
   </div> 
  </div> 
  <div id="scrolltop" class="js_scrolltop"> 
   <a title="返回顶部" class="scrolltopa" id="scrolltopa" style="display: none;"> <b>返回顶部</b> </a> 
  </div> 
  


  
  
  <script type="text/javascript">
  function updateuseronlinetime(){
	  $.ajax({
		   type: "POST",
		   url: "http://bbs.javaee.cc/common/updateuseronlinetime.do",
		   async: true,
		   success: function(data){
		   }
	 });
  }
  setInterval("updateuseronlinetime()",30000);
</script>

<script>
(function(){
    var bp = document.createElement('script');
    var curProtocol = window.location.protocol.split(':')[0];
    if (curProtocol === 'https') {
        bp.src = 'push.js'/*tpa=https://zz.bdstatic.com/linksubmit/push.js*/;        
    }
    else {
        bp.src = 'push-1.js'/*tpa=http://push.zhanzhang.baidu.com/push.js*/;
    }
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(bp, s);
})();
</script>

 </body>
</html>