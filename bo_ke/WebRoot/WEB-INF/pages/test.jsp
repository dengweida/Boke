<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zh-CN">
<head>
 <meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<meta name="renderer" content="webkit">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<meta name="keywords" content="">
<meta name="description" content="">
<!--富文本编辑器-->
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/uedi/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${pageContext.request.contextPath }/uedi/ueditor.all.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath }/uedi/lang/zh-cn/zh-cn.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/nprogress.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/style.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/font-awesome.min.css">
<link rel="apple-touch-icon-precomposed" href="${pageContext.request.contextPath }/images/icon.png">
<link rel="shortcut icon" href="${pageContext.request.contextPath }/images/favicon.ico"> 


<script src="${pageContext.request.contextPath }/js/jquery-2.1.4.min.js"></script>
<script src="${pageContext.request.contextPath }/js/nprogress.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.lazyload.min.js"></script> 
     <script type="text/javascript">
   $(document).on("change","select,input,textarea",function(){
    window.onbeforeunload = function(event) {
    
          return "您编辑的信息尚未保存，您确定要离开吗？"//这里内容不会显示在提示框，为了增加语义化。
    };
});


     </script>

<style type="text/css">
.button {
    display: inline-block;
    width: 135px;
    height: 35px;
    background: url(${pageContext.request.contextPath }/images/formbtnbg.png);
    border: none;
    border-radius: 3px;
    color: #fff;
    font-size: 16px;
    cursor: pointer;
    font-family: 'Microsoft Yahei','微软雅黑';
</style>




<!--[if gte IE 9]>
  <script src="js/jquery-1.11.1.min.js" type="text/javascript"></script>
  <script src="js/html5shiv.min.js" type="text/javascript"></script>
  <script src="js/respond.min.js" type="text/javascript"></script>
  <script src="js/selectivizr-min.js" type="text/javascript"></script>
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
    
      
      
      
      <div class="container-fluid">
	<div class="row">
		<div class="col-md-12">
			<div class="row">
				<div class="col-md-2">
				</div>
				<div class="col-md-7">
				<form role="form" action="${pageContext.request.contextPath }/test/addArticle.action" method="post" style="width: 942px; height: 134px; margin-top: 50px"> 
    <label style="float:left;font-size:20px">主题分类：</label><select name="theme" class="form-control" style="width: 179px; height: 38px;font-size:20px">      
        <option>踢足球</option>
        <option>游泳</option>
        <option>慢跑</option>
        <option>跳舞</option>
    </select>
    <br>
    <label style="float:left;font-size:20px">标签分类：</label><select name="label" class="form-control" style="width: 179px; height: 38px;font-size:20px">      
        <option>原创</option>
        <option>转载</option>
        <option>翻译</option>
    </select>
    <br><br> 
     <label style="float:left;font-size:20px">文章标题：</label><input type="text" name="title" class="form-control" placeholder="输入标题" style="width: 647px;font-size:20px; ">
  <br><br>  
  <label style="float:left;font-size:20px">文章简介：</label><textarea type="text" name="intro" class="form-control" placeholder="输入文章简介（100字以内）" style="width: 650px;font-size:20px; height: 121px"></textarea>
<br/>
<input name="content" id="content"type="hidden" value="">
<textarea id="editor" type="text/plain"  style="width:1024px;height:500px;"></textarea>
<button class="button" onclick="uptext()">确认发布</button>
</form>







 <!-- 富文本编辑器脚本开始 -->
<script type="text/javascript">

    //实例化编辑器
    //建议使用工厂方法getEditor创建和引用编辑器实例，如果在某个闭包下引用该编辑器，直接调用UE.getEditor('editor')就能拿到相关的实例
   var ue = UE.getEditor('editor');





    function isFocus(e){
        alert(UE.getEditor('editor').isFocus());
        UE.dom.domUtils.preventDefault(e)
    }
    function setblur(e){
        UE.getEditor('editor').blur();
        UE.dom.domUtils.preventDefault(e)
    }
    function insertHtml() {
        var value = prompt('插入html代码', '');
        UE.getEditor('editor').execCommand('insertHtml', value)
    }
    function createEditor() {
        enableBtn();
        UE.getEditor('editor');
    }
    function getAllHtml() {
        alert(UE.getEditor('editor').getAllHtml())
    }
    function getContent() {
        var arr = [];
        arr.push("使用editor.getContent()方法可以获得编辑器的内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getContent());
        alert(arr.join("\n"));
    }
    function getPlainTxt() {
        var arr = [];
        arr.push("使用editor.getPlainTxt()方法可以获得编辑器的带格式的纯文本内容");
        arr.push("内容为：");
        arr.push(UE.getEditor('editor').getPlainTxt());
        alert(arr.join('\n'))
    }
    function setContent(isAppendTo) {
        var arr = [];
        arr.push("使用editor.setContent('欢迎使用ueditor')方法可以设置编辑器的内容");
        UE.getEditor('editor').setContent('欢迎使用ueditor', isAppendTo);
        alert(arr.join("\n"));
    }
    function setDisabled() {
        UE.getEditor('editor').setDisabled('fullscreen');
        disableBtn("enable");
    }

    function setEnabled() {
        UE.getEditor('editor').setEnabled();
        enableBtn();
    }

    function getText() {
        //当你点击按钮时编辑区域已经失去了焦点，如果直接用getText将不会得到内容，所以要在选回来，然后取得内容
        var range = UE.getEditor('editor').selection.getRange();
        range.select();
        var txt = UE.getEditor('editor').selection.getText();
        alert(txt)
    }

    function getContentTxt() {
        var arr = [];
        arr.push("使用editor.getContentTxt()方法可以获得编辑器的纯文本内容");
        arr.push("编辑器的纯文本内容为：");
        arr.push(UE.getEditor('editor').getContentTxt());
        alert(arr.join("\n"));
    }
    function hasContent() {
        var arr = [];
        arr.push("使用editor.hasContents()方法判断编辑器里是否有内容");
        arr.push("判断结果为：");
        arr.push(UE.getEditor('editor').hasContents());
        alert(arr.join("\n"));
    }
    function setFocus() {
        UE.getEditor('editor').focus();
    }
    function deleteEditor() {
        disableBtn();
        UE.getEditor('editor').destroy();
    }
    function disableBtn(str) {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            if (btn.id == str) {
                UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
            } else {
                btn.setAttribute("disabled", "true");
            }
        }
    }
    function enableBtn() {
        var div = document.getElementById('btns');
        var btns = UE.dom.domUtils.getElementsByTagName(div, "button");
        for (var i = 0, btn; btn = btns[i++];) {
            UE.dom.domUtils.removeAttributes(btn, ["disabled"]);
        }
    }

    function getLocalData () {
        alert(UE.getEditor('editor').execCommand( "getlocaldata" ));
    }

    function clearLocalData () {
        UE.getEditor('editor').execCommand( "clearlocaldata" );
        alert("已清空草稿箱")
    }
    
    
 
   $(function(){
        var content =$('#daily_content').val();
        //判断ueditor 编辑器是否创建成功
        ue.addListener("ready", function () {
        // editor准备好之后才可以使用
        ue.setContent('<p style="color:silver;font-size:40px;">文明发文,如有违反，后果将由您个人自行承担。</p>');
        });
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
				
				
<!-- 富文本编辑器脚本结束 -->				
				</div>
				<div class="col-md-3">
				</div>
			</div>
		</div>
	</div>
</div>
 
 














<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<footer class="footer">
<div id="gotop"><a class="gotop"></a></div>
</footer>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath }/js/jquery.ias.js"></script>
<script src="${pageContext.request.contextPath }/js/scripts.js"></script>

</body>
</html>
