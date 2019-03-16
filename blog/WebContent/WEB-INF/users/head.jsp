<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

					<li class="dropdown"><a href="javascript:void(0);"
						class="dropdown-toggle" data-toggle="dropdown" id="dropdownMenu1">
							技术分类 </a>
						<ul class="dropdown-menu" id="dropDownCur">
							<c:if test="${blogsortList.size()>0 }">
								<c:forEach items="${blogsortList }" var="blogsort">
									
										<li><a
											href="${pageContext.request.contextPath }/blog.do?flag=articleCategory&blogsortId=${blogsort.id }">${blogsort.name }(${blogsort.blogs.size() })</a></li>
									

								</c:forEach>

							</c:if>
						

						</ul></li>


					<li><a
						href="${pageContext.request.contextPath }/users.do?flag=goTimeline"
						title="时光轴">时光轴</a></li>
					<li class="dropdown"><a href="javascript:void(0);"
						class="dropdown-toggle" data-toggle="dropdown" id="dropdownMenu1">
							关于我 </a>
						<ul class="dropdown-menu" id="dropDownCur">
						<li><a href="#">个人简介</a></li>
							<li><a href="https://blog.csdn.net/rj2017211811" target="_blank">我的CSDN</a></li>
							<li><a href="#">每日一句</a></li>
						

						</ul></li>

					
					<li><a
						href="${pageContext.request.contextPath }/login.do?flag=goLogin&pageNow=1"
						title="回到主页">回到主页</a></li>

				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a
						href="${pageContext.request.contextPath }/blog.do?flag=goWriteBlog">写文章</a></li>
					<li>
						<!-- 模态框（Modal） --> <a href="javascript:void(0)"
						class="btn btn-primary btn-lg" data-toggle="modal"
						data-target="#login" style="display: none" id="notLogin">登录</a> <!-- 模态框（Modal） -->
						<!-- 注册窗口 --> <a
						href="${pageContext.request.contextPath }/users.do?flag=goUsersDetailInfo"
						style="display: none" id="hasLogin">账号</a>
						<div id="register" class="modal fade" tabindex="-1">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-body">
										<button class="close" data-dismiss="modal">
											<span>&times;</span>
									</div>
									<div class="modal-title">
										<h1 class="text-center">注册</h1>
									</div>
									<form class="form-group"
										action="${pageContext.request.contextPath }/register.do?flag=register"
										method="post">
										<div class="form-group">
											<label for="">用户名</label> <input class="form-control"
												type="text" placeholder="6-15位字母或数字" name="username">
										</div>
										<div class="form-group">
											<label for="">密码</label> <input class="form-control"
												type="password" placeholder="至少6位字母或数字" name="password">
										</div>
										<div class="form-group">
											<label for="">再次输入密码</label> <input class="form-control"
												type="password" placeholder="至少6位字母或数字" name="password2">
										</div>
										<div class="form-group">
											<label for="">邮箱</label> <input class="form-control"
												type="text" placeholder="例如:123@123.com" name="email">
										</div>
										<div class="text-right">
											<button class="btn btn-primary" type="submit">提交</button>
											<button class="btn btn-danger" data-dismiss="modal">取消</button>
										</div>
										<a href="" data-toggle="modal" data-dismiss="modal"
											data-target="#login">已有账号？点我登录</a>
									</form>
								</div>
							</div>
						</div> <!-- 登录窗口 -->
						<div id="login" class="modal fade">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-body">
										<button class="close" data-dismiss="modal">
											<span>&times;</span>
										</button>
									</div>
									<div class="modal-title">
										<h1 class="text-center">登录</h1>
									</div>
									<div class="modal-body">
										<form class="form-group"
											action="${pageContext.request.contextPath }/login.do?flag=login"
											method="post">
											<div class="form-group">
												<label for="">用户名</label> <input class="form-control"
													type="text" placeholder="" name="username">
											</div>
											<div class="form-group">
												<label for="">密码</label> <input class="form-control"
													type="password" placeholder="" name="password">
											</div>


											<div class="text-right">
												<button class="btn btn-primary" type="submit">登录</button>
												<button class="btn btn-danger" data-dismiss="modal">取消</button>
												<a href="" data-toggle="modal" data-dismiss="modal"
													data-target="#register">还没有账号？点我注册</a>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					<li><a href="#">后台管理</a></li>

				</ul>
				<form class="navbar-form navbar-right"
					action="${pageContext.request.contextPath }/blog.do?flag=searchArticle"
					method="post">
					<div class="form-group">
						<input type="text" class="form-control" placeholder="输入你要找的内容"
							style="border-radius: 10px;" name="blogName">
					</div>
					<button type="submit" class="btn btn-default">搜索</button>
				</form>




			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->

	</nav>
</div>
