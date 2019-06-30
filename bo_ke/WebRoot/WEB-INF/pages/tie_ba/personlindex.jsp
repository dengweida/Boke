<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${t_resultSnumber}"/>
<!doctype html>
<style>
th {  
 color: #4f6b72;  
 border-right: 1px solid #C1DAD7;  
 border-bottom: 1px solid #C1DAD7;  
 border-top: 1px solid #C1DAD7;  
 letter-spacing: 2px;  
 text-transform: uppercase;  
 text-align: left;  
 padding: 6px 6px 6px 12px;  
}  
td {  
 background: #fff;  
 font-size:11px;  
 color: #4f6b72;  
}  

#rightcontiner{
			float:left;
			width:250px;
            height:335px;
			border:1px solid  #CCC;
                        
                         margin-top:50px;
		}


</style>

<script type="text/javascript" src="${pageContext.request.contextPath }/tie_ba/js/index/jquery.min.js"   language="javascript"></script>
<script>
var bookdiv=new  Array("culture","family","history","novel","save");
var bookdl=new Array("book_culture","book_family","book_history","book_novel","book_save");
function tag(id)
{


	for(var i=0;i<bookdiv.length;i++)
	{
		if(id==i)
		{
	    	$(bookdiv[i]).className="book_type_out";
			$(bookdl[i]).style.display="block";	
			
		
			var ctx ="${ctx}";
			if(id==0){
			//重定义$,避免冲突
			var pq=jQuery.noConflict();
			//判断id为book_culture_view的块下是否有dt
		 if (pq("#book_culture_view:has(dt)").length==0){

				mytie(ctx);	
				}
			 }
			else if(id==1){
			alert("我的回复");
			}
			else if(id==2){
			alert("回复我的");
			}
			else if(id==3){
			alert("我的好友");
			}
			else if(id==4){
			alert("收藏的帖子");
			}
				
		}
		else
		{
			$(bookdiv[i]).className="book_type";
			$(bookdl[i]).style.display="none";	
		}
	}
}		
		function $(obj){
		 return document.getElementById(obj);
		}
		
	function mytie(ctx){
	var jq=jQuery.noConflict();
jq.ajax({
					   type: "POST",
					   url:"${pageContext.request.contextPath }/ajax/MyTiezi.action",
					   data: {"t_resultSnumber":ctx},
					   async: true,
                      dataType:"json",
					   success: function(data){
					  
						 var arr=data.replies;  
						var html = "";
                for(var i=0;i<data.replies.length;i++){    //遍历data数组
                        var ls = data[i];  
 //格式化时间开始
var format = function(time, format) {
    var t = new Date(time);
    var tf = function(i) {
        return (i < 10 ? '0': '') + i
    };
    return format.replace(/yyyy|MM|dd|HH|mm|ss/g,
    function(a) {
        switch (a) {
        case 'yyyy':
            return tf(t.getFullYear());
            break;
        case 'MM':
            return tf(t.getMonth() + 1);
            break;
        case 'mm':
            return tf(t.getMinutes());
            break;
        case 'dd':
            return tf(t.getDate());
            break;
        case 'HH':
            return tf(t.getHours());
            break;
        case 'ss':
            return tf(t.getSeconds());
            break;
        }
    });
}

            var formatDate= format(arr[i].t_date, 'yyyy-MM-dd HH:mm:ss');//
 //格式化时间结束  
                     var   html =jq("<dt><img src='"+arr[i].t_image1+"' alt='history' height=\"60\" width=\"60\"/></dt><dd><font class=\"book_title\"><a href=\"/Tieba/NoteServlet?tiebaId=1&action=all\">"+arr[i].t_title+"</a></font><br /><br /><font class=\"book_publish\">作者："+arr[i].t_resultSnumber+"发布时间："+formatDate+"</font><br /></dd>");//在html页面id=test的标签里显示html内容
                       jq('#book_culture_view').append(html); //在html页面id=test的标签里显示html内容
                    }   
						},
						  error: function(data) {
                             alert("错误"); 
                                               },

						
						 });
	}	
</script>

<script>
	function ConfirmDel() {
		if (confirm("真的要删除本帖及其回复吗？")){
				return true;
		}else{
			return false;
	}
	}
	</script>


<head>
	
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>贴吧</title>    
    <link href="css/personlindex/index.css" rel="stylesheet" type="text/css" />
 <link href="css/personlindex/bootstrap.min.css" rel="stylesheet" type="text/css" />
<link href="css/personlindex/bootstrap.css" rel="stylesheet" type="text/css" />
<link href="css/personlindex/common.css2.css" rel="stylesheet" type="text/css" />

</head>
<body> 	


<!--页头bootstrap-->
                       <div class="row1">
				<div class="1col-md-12">

<div class="headerModule2">
	<div class="box">
		<a href="" class="logo" name="top"><!--返回到顶部name=top-->
			<img alt="LOGO" src="image/index/logo.gif"   >
		</a>
<div class="nav">
	<ul class="clearfix">
			<li><a  onclick="mytie(150106)" >首页</a></li>
			
	</ul>
</div>

		<div class="menu" >
			<ul class="clearfix">
					<li><a   >注册</a></li>
					<li><a   >登录</a></li>
			</ul>
		</div>
	</div>
</div>




				</div>
			</div>



<br/>

<div class="container-fluid">
	<div class="row">
            <div class="col-md-12">
<!--开始页中部bootstrap-->
<div class="row">
<!--左边-->
    <div class="col-md-1">
    </div>

<!--中间-->
<div class="col-md-2">
<div id="rightcontiner" >
  		<div>		
  		  <div class="userlike_info_head"> 
  					
  					
  					<a href="" target="_blank">
  					<img id="userlike_info_head_img" height="100" width="100"" src="touxiang.jpg" style="margin:0 30% 0"> 
  					<br/><br/><span style="margin:100px 50px auto;">姓名：某某某某</span><br/>
<span style="margin:100px 12px auto;">专业：计算机科学与技术</span>
<br/><span style="margin:100px 50px auto;">级数：2015级 </span>
  </a>					
 <table cellspacing="0" cellpadding="0" style="margin:10px 20px 0px 60px;">
               <tbody>
                <tr>
                 <th><p><a href="" class="xi2">94</a></p>帖子</th>
                 <th><p><a href="" class="xi2">123</a></p>回复</th>
                </tr>
               </tbody>
              </table> 					
  					
  					 <hr width="250px"; size="1" color="#5151A2"style="border:1 dashed #5151A2">
  					</div>
  			
  		</div>
  	</div>
<!--中间结束-->
</div>
		

<div class="col-md-9">				
<!--网站右边内容开始-->
<div id="main">
<!--右边部分开始-->
<div id="content">
  <div class="book_new">
 <div class="book_left">个人设置</div>
     <div class="book_type" id="culture" onMouseOver="tag('0')">我的帖子</div>
     <div class="book_type" id="family" onMouseOver="tag('1')">我的回复</div>
     <div class="book_type" id="history" onMouseOver="tag('2')">回复我的</div> 
     <div class="book_type" id="novel" onMouseOver="tag('3')">我的好友</div>    
     <div class="book_type" id="save" onMouseOver="tag('4')">收藏的帖子</div>

   </div>
     <div class="book_class" style="height:550px; margin:10px;">


			

<!--我的帖子-->
                 <dl id="book_culture" >
<div class="row">
	<div class="col-md-12">
	<div  id="book_culture_view">
 

  </div>
	</div>
      </div>

<div class="row">
   <div class="col-md-12">
   
	<!--分页-->
<nav style="padding-left:292px">
						<ul class="pagination" >
							<li class="page-item">
								<a class="page-link" href="#">&laquo;</a>

							</li>
							<li class="page-item">
								<a class="page-link" href="#">1</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">2</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">3</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">4</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">5</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">&raquo;</a>

							</li>
						</ul>
					</nav>
              
            </div>
	</div>
		    



                      
	
                </dl>




  <!--我的回复-->
                <dl id="book_family" class="book_none">
                  
                   <table width="720" >
			   <tr>  
                            <th >回复内容</th> 
			    <th >帖子标题</th>  
			    <th >回复时间</th>
			    <th >操作</th>  
			  </tr>  
	      
	        	 <tr>  
			     <td>huifu</td>
			    <td >我的贴吧</td>  
			    <td >2019.4.12</td>
			    <td > <a onclick="return ConfirmDel();" href="#">删除帖子</a></td>  
			  </tr>  
	        
	 		</table>               
 <!--我的回复分页-->                  
<nav style="padding-left:292px">
						<ul class="pagination" >
							<li class="page-item">
								<a class="page-link" href="#">&laquo;</a>

							</li>
							<li class="page-item">
								<a class="page-link" href="#">1</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">2</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">3</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">4</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">5</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="#">&raquo;</a>

							</li>
						</ul>
					</nav>




                </dl>


                       
                   
                
 <!--回复我的-->
                 <dl id="book_history" class="book_none">

                   <dt><img src="images\userinfo\u1.jpg" alt="history" height="60" width="60"/></dt>
                   <dd><font class="book_title"><a href="/Tieba/NoteServlet?tiebaId=1&action=all">JVAV吧</a></font><br />
                    由于各种网盘已死，
Java吧官方不再支持任何资源以附加的形式下载。
仅提供Java相关资源的官方网站地址。
本吧所有链接将在楼下以外挂回复形式按照分类分楼层摆放。
各种链接地址将由吧务整理到所述楼层回复中 <br />
                     <font class="book_publish">作者：qaz123  发布时间：2013-10-01 10:33</font><br />
                     </dd>                   
                  </dl>

 <!--我的好友-->
                <dl id="book_novel" class="book_none">  
 <table width="720" >
			   <tr>  
			    <th >学号</th>  
			    <th >姓名</th>  
			    <th >专业</th>
			    <th >学历</th>
			    <th >入学年份</th> 
                            <th >操作</th>  
			  </tr>  
	      
	        	 <tr>  
			    <td > 1500000111</td>  
			    <td >某某</td>  
			    <td >计科</td>
			    <td >本科</td>
                            <td >2015</td>
			    <td > <a onclick="return ConfirmDel();" href="#">删除好友</a></td>  
			  </tr>  
	        
	 		</table>
                </dl>

<!--收藏的帖子-->
 <dl id="book_save" class="book_none">
 <dt><img src="images\userinfo\u2.jpg" alt="history" height="60" width="60"/></dt>
                   <dd><font class="book_title"><a href="/Tieba/NoteServlet?tiebaId=2&action=all">诺贝尔吧</a></font><br />
                    “金融是一种理论，尽管其中有许多有争议的因素，但对社会有用，”席勒说。
　　被《瑞典日报》记者问及如何看待在一些欧美国家蔓延的金融危机时，席勒说，那反映出“金融体系中的一些错误与瑕疵，我们正在修正”。 <br />
                     <font class="book_publish">作者：qwerty 发布时间：2013-10-07 11:31</font><a onclick="return ConfirmDel();" href="#">删除帖子</a>
<br />

                     </dd> 
</dl> 
</div>
</div>
<!--重点关注-->
<div class="book_sort">
  </div>
 </div>
<!--中间部分结束-->
</div>
<!--中间bootstrap结束-->
</div>
 	


	   </div>
	</div>
    </div>
</div>


</body>	
</html>

