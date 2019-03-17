<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>个人信息</title>
<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/head2.css">
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/css/usersDetailInfo.css">
<style type="text/css">
</style>
<script type="text/javascript">
	<!--
	    
		window.onload=function()
		{
		  
			//判断是否修改成功
			var  tipMessage="${requestScope.tipMessage }";
			if(tipMessage!="")
			{
				alert(tipMessage);
			}
			
		}
	    function Show(obj)
	    {
	    	$(obj).css("display","block");
	    }
	-->

</script>
</head>
<body>

	<jsp:include page="/WEB-INF/users/head2.jsp"></jsp:include>
	<div class="selfInfo">




		<div class="container">

			<div class="row">

				<div class="col-md-3" id="icon_info">
					<img alt=""
						src="${pageContext.request.contextPath }/images/userhead/${sessionScope.user.icon }"
						class="round_icon"> 
						
						
						<br>
					
						<a href="javascript:void(0)" class="btn btn-primary" onclick="Show('#update_icon')">修改头像</a>
						<div id="update_icon" style="display:none;">
							<form action="${pageContext.request.contextPath }/users.do?flag=uploadPhoto" method="post" enctype="multipart/form-data">
								<div class="form-group">
									<input type="file" name="photo" class="from-control">
								</div>
								<div class="form-group">
									<input type="submit" class="from-control btn btn-primary" value="确认">
								</div>
								
							</form>
						</div>

				</div>
				<div class="col-md-9">




					<table class="table ">
						<thead>
							<tr>
								<th colspan="2" style="text-align: center;">个人信息</th>

							</tr>

						</thead>
						<tbody>
							<tr>
								<th>用户名</th>
								<td>${sessionScope.user.username }</td>

							</tr>

							<tr>
								<th>密码</th>

								<td>${sessionScope.user.password }</td>

							</tr>
							<tr>
								<th>邮箱</th>
								<td>${sessionScope.user.email }</td>

							</tr>
							<tr>
								<th>真实姓名</th>
								<td>${sessionScope.user.truename }</td>

							</tr>
							<tr>
								<th>性别</th>
								<td>${sessionScope.user.sex }</td>

							</tr>

							<tr>
								<th>昵称</th>
								<td>${sessionScope.user.nickname }</td>

							</tr>

							<tr>
								<th>个人签名</th>
								<td>${sessionScope.user.assign }</td>

							</tr>
							<tr>
								<th>地区</th>
								<td></td>

							</tr>
							<tr>
								<th>注册日期</th>
								<td>${sessionScope.user.registerDate }</td>

							</tr>
							<tr>
								<td colspan="2">
								<button 
						class="btn btn-primary " data-toggle="modal"
						data-target="#updateInfo" >修改信息</button>
							
							</tr>


						</tbody>

					</table>
					
						<div id="updateInfo" class="modal fade" tabindex="-1">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-body">
										<button class="close" data-dismiss="modal">
											<span>&times;</span>
									</div>
									<div class="modal-title">
										<h1 class="text-center">修改信息</h1>
									</div>
									<form class="form-group"
										action="${pageContext.request.contextPath }/users.do?flag=updateSelfInfo" method="post">
										<div class="form-group">
											<label for="">用户名</label> <input class="form-control"
												type="text" placeholder="6-15位字母或数字" name="username" value="${sessionScope.user.username }">
										</div>
										<div class="form-group">
											<label for="">密码</label> <input class="form-control"
												type="password" placeholder="至少6位字母或数字" name="password" value="${sessionScope.user.password }">
										</div>
										<div class="form-group">
											<label for="">再次输入密码</label> <input class="form-control"
												type="password" placeholder="至少6位字母或数字" name="password2" value="${sessionScope.user.password }">
										</div>
										<div class="form-group">
											<label for="">邮箱</label> <input class="form-control"
												type="text" placeholder="例如:123@123.com" name="email"  value="${sessionScope.user.email }">
										</div>
										<div class="form-group">
											<label for="">真实姓名</label> <input class="form-control"
												type="text" placeholder="输入真实姓名" name="truename"  value="${sessionScope.user.truename }">
										</div>
										<div class="form-group">
											<label for="">性别</label> <input class="form-control"
												type="text" placeholder="男/女" name="sex"  value="${sessionScope.user.sex }">
										</div>
										<div class="form-group">
											<label for="">昵称</label> <input class="form-control"
												type="text" placeholder="你喜欢的称呼" name="nickname"  value="${sessionScope.user.nickname }">
										</div>
										<div class="form-group">
											<label for="">个性签名</label> <input class="form-control"
												type="text" placeholder="你的个性签名" name="assign"  value="${sessionScope.user.assign }">
												<input type="hidden" name="id" value="${sessionScope.user.id }">
										</div>
										
										
										<div class="text-right">
										    
											<button class="btn btn-primary" type="submit">提交</button>
											<button class="btn btn-danger" data-dismiss="modal">取消</button>
										</div>
										
									</form>
								</div>
							</div>
						</div>
					
				</div>
			</div>


		</div>
	</div>
	<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>


	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script
		src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>