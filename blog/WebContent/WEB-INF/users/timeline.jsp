

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>时光轴</title>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/timeline2/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/timeline2/css/bootstrap.css">

<link rel="stylesheet"
	href="${pageContext.request.contextPath }/timeline2/css/timeline.css">
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
</style>
</head>
<body>
	<jsp:include page="/WEB-INF/users/head2.jsp"></jsp:include>
	<div class="container-fluid">
		<div class="col-md-12">
			<div class="row">
				<h2>网站建设历程</h2>
				<div class="timeline timeline-line-dotted">
					<span class="timeline-label"> <span
						class="label label-primary">2019.3.9</span>
					</span>
					<div class="timeline-item">
						<div class="timeline-point timeline-point-success">
							<i class="fa fa-money"></i>
						</div>
						<div class="timeline-event">
							<div class="timeline-heading">
								<h4>博客</h4>
							</div>
							<div class="timeline-body">
								<p>实现了登录、注册、修改个人信息功能</p>
							</div>
							<div class="timeline-footer">
								<p class="text-right">2019.3.9</p>
							</div>
						</div>
					</div>
					<span class="timeline-label"> <span
						class="label label-primary">2019.3.10</span>
					</span>
					<div class="timeline-item">
						<div class="timeline-point timeline-point-success">
							<i class="fa fa-money"></i>
						</div>
						<div class="timeline-event">
							<div class="timeline-heading">
								<h4>博客</h4>
							</div>
							<div class="timeline-body">
								<p>实现了写博客、发表、主页分页显示博客功能(暂时不支持博客分类)</p>
							</div>
							<div class="timeline-footer">
								<p class="text-right">2019.3.10</p>
							</div>
						</div>
					</div>
					<span class="timeline-label"> <span
						class="label label-primary">2019.3.11</span>
					</span>
					<div class="timeline-item">
						<div class="timeline-point timeline-point-success">
							<i class="fa fa-money"></i>
						</div>
						<div class="timeline-event">
							<div class="timeline-heading">
								<h4>博客</h4>
							</div>
							<div class="timeline-body">
								<p>实现了按分类显示博客篇数、查询博客功能,用日历插件添加了日历</p>
							</div>
							<div class="timeline-footer">
								<p class="text-right">2019.3.11</p>
							</div>
						</div>
					</div>

					<span class="timeline-label"> <span
						class="label label-primary">2019.3.12</span>
					</span>
					<div class="timeline-item">
						<div class="timeline-point timeline-point-success">
							<i class="fa fa-money"></i>
						</div>
						<div class="timeline-event">
							<div class="timeline-heading">
								<h4>博客</h4>
							</div>
							<div class="timeline-body">
								<p>实现了按时间显示博客篇数、按时间查询博客、编辑博客、删除博客功能</p>
							</div>
							<div class="timeline-footer">
								<p class="text-right">2019.3.12</p>
							</div>
						</div>
					</div>

					<span class="timeline-label"> <span
						class="label label-primary">2019.3.13</span>
					</span>
					<div class="timeline-item">
						<div class="timeline-point timeline-point-success">
							<i class="fa fa-money"></i>
						</div>
						<div class="timeline-event">
							<div class="timeline-heading">
								<h4>博客</h4>
							</div>
							<div class="timeline-body">
								<p>实现了时光轴功能、将导航点击显示菜单改为了鼠标滑动显示菜单、按关键字搜索blog功能</p>
							</div>
							<div class="timeline-footer">
								<p class="text-right">2019.3.13</p>
							</div>
						</div>
					</div>

					<span class="timeline-label"> <span
						class="label label-primary">2019.3.14</span>
					</span>
					<div class="timeline-item">
						<div class="timeline-point timeline-point-success">
							<i class="fa fa-money"></i>
						</div>
						<div class="timeline-event">
							<div class="timeline-heading">
								<h4>博客</h4>
							</div>
							<div class="timeline-body">
								<p>修复了手动添加和点击复选框添加分类的bug</p>
							</div>
							<div class="timeline-footer">
								<p class="text-right">2019.3.14</p>
							</div>
						</div>
					</div>
					
					<span class="timeline-label"> <span
						class="label label-primary">2019.3.17</span>
					</span>
					<div class="timeline-item">
						<div class="timeline-point timeline-point-success">
							<i class="fa fa-money"></i>
						</div>
						<div class="timeline-event">
							<div class="timeline-heading">
								<h4>博客</h4>
							</div>
							<div class="timeline-body">
								<p>实现了留言功能、显示留言、个人介绍、jsp页面标题显示功能</p>
							</div>
							<div class="timeline-footer">
								<p class="text-right">2019.3.17</p>
							</div>
						</div>
					</div>



					<span class="timeline-label"> <a href="#"
						class="btn btn-default" title="More..."> <i
							class="fa fa-fw fa-history"></i>
					</a>
					</span>
				</div>
			</div>


		</div>

	</div>


</body>
</html>
