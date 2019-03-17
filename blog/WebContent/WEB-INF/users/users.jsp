<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html ng-app="app" lang="en">
<head>
<meta charset="UTF-8">
<title>首页</title>
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=no">

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/foot.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/head.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/users.css">
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/angularjs-datetime-picker/css/wui.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/calendar/css/calendar.css">

<!--  <script type="text/javascript"
	src="${pageContext.request.contextPath }/angularjs-datetime-picker/js/jquery.min.js"></script>
<script type="text/javascript"
	src="${pageContext.request.contextPath }/angularjs-datetime-picker/js/angular.min.js"></script>

<script type="text/javascript"
	src="${pageContext.request.contextPath }/angularjs-datetime-picker/js/wui-date.js"
	charset="utf-8"></script>-->


<script type="text/javascript">
<!--
	window.onload = function() {
		//判断是否已经登录
		var user = "${sessionScope.user }";
		if (user != null && user != "") {

			$("#hasLogin").css("display", "block");

		} else {
			$("#notLogin").css("display", "block");
		}
		//判断是否登录成功
		var tipMessage = "${requestScope.tipMessage }";
		if (tipMessage != "") {
			alert(tipMessage);
		}

	}
	-->
</script>
<style type="text/css">
.navbar-default {
	border-color: #e7e7e7;
	background-color: #1C2327;
}

.navbar-default .navbar-nav>li>a {
	color: white;
}

.navbar-default .navbar-brand {
	color: white;
}

.navbar-default .navbar-brand:hover {
	color: #FF0000;
}

.navbar-default .navbar-nav>li>a:link {
	color: white;
}

.navbar-default .navbar-nav>li>a:visited {
	color: white;
}

.navbar-default .navbar-nav>li>a:hover {
	color: #00A0FF;
}

.navbar-default .navbar-nav>li>a:active {
	color: green;
}

.article {
	margin-bottom: 10px;
	border: 1px solid #EFEFEF;
}



.title {
	background-color: #47505F;
	padding: 10px;
	color: white;
}

.title1 {
	color: #63BA71;
	padding: 10px;
}

.article .read {
	color: #63BA71;
}

.article {
	height: 180px;
}

.article_content {
	height: 70px;
	overflow: hidden;
}

.publishDate {
	padding: 10px;
}

#allArticle {
	line-height: 20px;
	padding-right: 30px;
	
	
}

.rightInfo {
	margin-bottom: 10px;
	border: 1px solid #EFEFEF;
	padding: 10px;
}

.tag1 {
	background-color: #818181;
	padding: 5px;
}

.tag2 {
	background-color: #5CBEAB;
	padding: 5px;
}

.tag3 {
	background-color: #8DCD8D;
	padding: 5px;
}

.tag4 {
	background-color: #E48784;
	padding: 5px;
}

.tag5 {
	background-color: #CA9D71;
	padding: 5px;
}

.tag6 {
	background-color: #FF9147;
	padding: 5px;
}

.tag1 a, .tag2 a, .tag3 a, .tag4 a, .tag5 a, .tag6 a {
	color: white;
	text-decoration: none;
}

.tag1:hover {
	background-color: #272727;
}

.tag2:hover {
	background-color: #009688;
}

.tag3:hover {
	background-color: #00FF00;
}

.tag4:hover {
	background-color: #CC3333;
}

.tag5:hover {
	background-color: #CC6600;
}

.tag6:hover {
	background-color: #FF6600;
}

a {
	text-decoration: none;
}

a:link {
	text-decoration: none;
}

.modal-content {
	padding: 10px;
}
</style>
</head>
<body>

	<jsp:include page="/WEB-INF/users/head.jsp"></jsp:include>
	<div id="mainPage">
		<div class="container">
			<div class="row">

				
				<div class="col-md-3">
					<div class="rightInfo">
						<div class="row">
							<div class="col-md-12" class="sort">
								<div class="title" class="col-md-12">日历</div>
								<div class="content" class="col-md-12">
									<!--  <div id="calendar">
										<wui-date format="yyyy-mm-dd" placeholder="查看日历" id="date1"
											btns="{'ok':'确定','now':'此刻'}" ng-model="date1"> </wui-date>


									</div>-->
									<div id="calendar" class="calendar"></div>


								</div>


							</div>


						</div>

					</div>

					<div class="rightInfo">
						<div class="row">
							<div class="col-md-12" class="sort">
								<div class="title" class="col-md-12">随笔(Category)分类</div>
								<div class="content" class="col-md-12">
									<div class="container">
										<dl class="list-unstyled">
											<c:forEach items="${blogsortList }" var="blogsort">
												<dd>
												<a href="${pageContext.request.contextPath }/blog.do?flag=articleCategory&blogsortId=${blogsort.id }">${blogsort.name }(${blogsort.blogs.size() })</a>
											</dd>
											
											</c:forEach>

											
										</dl>
									</div>
								</div>


							</div>


						</div>

					</div>
					<div class="rightInfo">
						<div class="row">
							<div class="col-md-12" class="sort">
								<div class="title" class="col-md-12">随笔(Category)档案</div>
								<div class="content" class="col-md-12">
									<div class="container">
										<dl class="list-unstyled">

											<c:if test="${dateList!=null }">
												<c:forEach   begin="0" end="${dateList.size()-1 }" var="i">
												<dd><a href="${pageContext.request.contextPath }/blog.do?flag=articleTime&publishDate=${dateList.get(i) }">${dateList.get(i) }(${dateList3.get(i) })</a></dd>
											</c:forEach>
											
											</c:if>
											
										</dl>
									</div>
								</div>


							</div>


						</div>

					</div>
					<div class="rightInfo">
						<div class="row">
							<div class="col-md-12" class="sort">
								<div class="title" class="col-md-12">标签云</div>
								<div class="content" class="col-md-12">
									<c:set var="i" value="1"></c:set>
									<c:forEach items="${tagList }" var="tag">
										
										<label class="tag${i%6+1 }"><a href="#">${tag.name }</a></label>
										<c:set var="i" value="${i+1 }"></c:set>
									</c:forEach>
									 
								</div>


							</div>


						</div>

					</div>


				</div>
				<div class="col-md-9" id="allArticle">



					<c:forEach items="${blogList }" var="blog">
						<div class="article">
							<div class="row">
								<div class="col-md-12">
									<div class="title1">${blog.title }</div>
								</div>


							</div>
							<div class="row">
								
								<div class="col-md-12" >
									<div class="article_content">${blog.content }</div>
									<div class="text-right" ><a href="${pageContext.request.contextPath }/blog.do?flag=articleDetail&blogId=${blog.id }" class="read"  >阅读全文</a>
									</div>
								</div>

							</div>
							<div class="row">
								<div class="col-md-12">
									<div class="col-md-6">${blog.publishDate }</div>
									<div class="text-right" class="col-md-6">
										posted @${blog.publishDate } czt 阅读(2509) 评论(19)&nbsp; <a href="${pageContext.request.contextPath }/blog.do?flag=goWriteBlog&blogId=${blog.id }">编辑</a>&nbsp;<a href="${pageContext.request.contextPath }/blog.do?flag=deleteBlog&blogId=${blog.id }">删除</a>&nbsp;
									</div>
								</div>
							</div>


						</div>

					</c:forEach>

					<div >
						<div class="row">
							<div class="col-md-12" class="text-center">
								<div class="title1">
									<nav aria-label="Page navigation">
										<ul class="pagination">

											<c:if test="${pageNow<=1 }">
												<li><span>&laquo;</span></li>
											</c:if>
											<c:if test="${pageNow>1 }">
												<li><a
													href="${pageContext.request.contextPath }/login.do?flag=goLogin&pageNow=${pageNow-1 }"
													aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
												</a></li>
											</c:if>
											<c:forEach begin="1" end="${pageCount }" var="i">
												<c:if test="${pageNow==i }">
													<li><span>${i }</span></li>

												</c:if>
												<c:if test="${pageNow!=i }">
													<li><a
														href="${pageContext.request.contextPath }/login.do?flag=goLogin&pageNow=${i }">${i }</a></li>
												</c:if>
											</c:forEach>

											<c:if test="${pageNow>=pageCount }">
												<li><span>&laquo;</span></li>
											</c:if>
											<c:if test="${pageNow<pageCount }">
												<li><a
													href="${pageContext.request.contextPath }/login.do?flag=goLogin&pageNow=${pageNow+1 }"
													aria-label="Next"> <span aria-hidden="true">&raquo;</span>

												</a></li>
											</c:if>


										</ul>
									</nav>
								</div>
							</div>
						</div>
					</div>

				</div>
				

			</div>

		</div>
	</div>


	<script
		src="${pageContext.request.contextPath }/calendar/js/jquery.min.js"></script>
	<script
		src="${pageContext.request.contextPath }/calendar/js/calendar.js"></script>
	<!--  <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>-->


	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script
		src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
    $("#dropdownMenu1").hover(
        function(){
            $("#dropDownCur").show();
    });//为了鼠标可以进入下拉框
    $("#dropDownCur").hover(function() {
        $(this).show();//鼠标进入下拉框
    }, function() {
        $(this).hide();//鼠标离开下拉框后，就会消失
    });
    $(document).ready(function(){
    	 if($(window).width()>768){

    	            //鼠标划过就展开子菜单

    	            $('ul.nav li.dropdown').hover(function() {

    	              $(this).find('.dropdown-menu').stop(true, true).slideDown();

    	            }, function() {

    	              $(this).find('.dropdown-menu').stop(true, true).slideUp();

    	            });

    	      }
    	});	
</script>

</body>
</html>