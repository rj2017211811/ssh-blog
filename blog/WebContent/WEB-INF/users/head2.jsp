<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="home">
	<nav class="navbar navbar-default">
		<div class="container" id="head-nav">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed"
					data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
					aria-expanded="false">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<span class="navbar-brand">分享技术，记录生活</span>
			</div>
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1">
				<ul class="nav navbar-nav">

					<li><a href="${pageContext.request.contextPath }/login.do?flag=goLogin&pageNow=1" title="回到主页">回到主页</a></li>
					<li><a  href="${pageContext.request.contextPath }/login.do?flag=logout">退出登录</a></li>
				</ul>
			

		</div>
		<!-- /.navbar-collapse -->
</div>
<!-- /.container -->

</nav>
</div>