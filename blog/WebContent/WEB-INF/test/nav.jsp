<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap</title>

 


<link rel="stylesheet" href="${pageContext.request.contextPath }/static/bootstrap/css/bootstrap.css" type="text/css"/>

<script type="text/javascript" src="${pageContext.request.contextPath }/static/jquery-3.3.1/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/static/bootstrap/js/bootstrap.js"></script>

</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top" style="background-color: #F5F8FC" >
	<div class="container" style="">

		<div class="navbar-header"><!--100%用 container-fluid -->
			
			<!--小屏幕导航按钮和logo-->
			<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse ">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a href="#home" class="navbar-brand" style="color:green;">主页</a>
            
        </div>
            <!--小屏幕导航按钮和logo-->


        <div class="navbar-collapse collapse">
        	<ul class="nav navbar-nav navbar-right">
        		<li ><a href="#home"    title="home">主页</a></li>
        		<li ><a href="#bbs"    title="bba">论坛</a></li>
        		<li ><a href="#contract"    title="contract">联系</a></li>
        		<li ><a href="#html5"    title="talk">前端开发</a></li>
        		<li ><a href="talk.php"    title="talk">留言板</a></li>
                <li ><a href="shop.php"    title="shop">购物</a></li>
        	    <li ><a href="http://wpa.qq.com/msgrd?v=3&uin=1765770246&site=qq&menu=yes" target="_blank" name="#contract"  title="QQ联系">QQ联系&nbsp;</a></li>
		  
		
		        <li ><a href="resource.html" name="#resource"  title="访问">我的收藏</a></li>
		        <li ><a href="admin.html" target="" name="#admin"  title="访问">后台管理</a></li>

		        
                <li  id="show_time" ></li>
                <li><a class="btn-default" href="login.html">登录</a></li>
          
        	</ul>
			
			
			
        </div>
    </div>
		
	</nav>





 <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

    
    <script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
   <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
   <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>   
</body>
</html>