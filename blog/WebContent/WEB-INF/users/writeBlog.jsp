<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width,initial-scale=1,user-scalable=no">
<title>writeBlog.jsp</title>

<link rel="stylesheet"
	href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">

<script type="text/javascript" charset="utf-8"
	src="${pageContext.request.contextPath }/kindeditor-master/kindeditor-all.js"></script>
 



<script type="text/javascript">
<!--
	var editor;
	KindEditor.ready(function(K) {
		editor = K.create('#kindEditor_demo', {});
	});

	-->
</script>
<style type="text/css">
.form-group {
	line-height: 35px;
}

div.modal-content {
	padding: 5px;
}

#tag {
	border-radius: 5px;
	display: none;
	height: 25px;
}
#sort {
	border-radius: 5px;
	display: none;
	height: 25px;
}

</style>
<script type="text/javascript">
<!--
	function Show(obj) {
		$(obj).css("display", "inline-block");
	}

	-->
</script>

</head>
<body>
	<c:if test="${param.blogId==null }">


		<c:set var="blogId" value="0"></c:set>
	</c:if>
	<c:if test="${param.blogId!=null }">


		<c:set var="blogId" value="${param.blogId }"></c:set>
	</c:if>

	<form
		action="${pageContext.request.contextPath }/blog.do?flag=publishBlog&blogId=${blogId }"
		method="post" class="form-horizontal" role="form">
		<div class="container">


			<div class="row">


				<div class="form-group">



					<div class="col-md-10">
						<c:if test="${blog!=null }">
							<input type="text" name="title" class="form-control"
								placeholder="输入文章标题" value="${blog.title }">
						</c:if>
						<c:if test="${blog==null }">
							<input type="text" name="title" class="form-control"
								placeholder="输入文章标题">
						</c:if>


					</div>
					<div class="col-md-2">
						<a href="javascript:void(0)" class="btn btn-danger btn-lg"
							data-toggle="modal" data-target="#publishArticle">发表文章</a> <a
							href="${pageContext.request.contextPath }/login.do?flag=goLogin&pageNow=1"
							title="回到主页">回到主页</a>
					</div>




				</div>



				<div class="row">
					<div class="form-group">
						<label>正文:</label>
						<textarea id="kindEditor_demo" name="content" class="form-control"
							class="form-control">
							<c:if test="${blog!=null }">
								${blog.content }
							</c:if>
							
							
							</textarea>

					</div>
				</div>

			</div>



		</div>

		<div id="publishArticle" class="modal fade" tabindex="-1">

			<div class="modal-dialog" class="container">
				<div class="modal-content">
					<div class="modal-body">
						<button class="close" data-dismiss="modal">
							<span>&times;</span>
						</button>
					</div>
					<div class="modal-title">
						<h1 class="text-center">发表文章</h1>
					</div>

					<div class="form-group">
						<div class="col-md-12">
							<label for="">文章标签:</label> <span> <input type="text"
								name="tag" onkeydown="this.onkeyup();"
								onkeyup="this.size=(this.value.length>2?this.value.length:2);"
								size="2" id="tag">
							</span> <a href="javascript:void(0)" onclick="Show('#tag')"><img
								alt="" src="" class="glyphicon glyphicon-plus">添加标签</a>
						</div>
					</div>
					<div class="form-group">
						<label for="" class="col-md-2">个人分类:</label> <span> <input type="text"
								name="blogsort2" onkeydown="this.onkeyup();"
								onkeyup="this.size=(this.value.length>2?this.value.length:2);"
								size="2" id="sort" >
							</span> <a href="javascript:void(0)" onclick="Show('#sort')"><img
							alt="" src="" class="glyphicon glyphicon-plus">添加新分类</a>

					</div>
					<div class="form-group">
						<c:forEach items="${blogsortList }" var="blogsort">
							

								<div class="row">
									<div class="col-md-3"></div>
									<div class="col-md-9">
										<div class="row">
											<div class="col-md-4">
												<label class="checkbox-inline"> <input
													type="checkbox" name="blogsort" value="${blogsort.id }">${blogsort.name }
												</label>
											</div>
											
										</div>

									</div>
								</div>



						</c:forEach>
						</div>
						



					<div class="form-group">

						<label for="" class="col-md-2">文章类型:</label>
						<div class="col-md-3">

							<select class="form-control">
								<option value="请选择">请选择</option>
								<option value="原创">原创</option>
								<option value="转载">转载</option>
							</select>


						</div>
						<div>
							<label class="control-label" class="col-md-2">*必填项</label>
						</div>
						<label for="" class="col-md-2">博客分类:</label>
						<div class="col-md-3">
							<select class="form-control" name="blogsort">


							</select>
						</div>
						<div>
							<label class="control-label" class="col-md-2">*必填项</label>
						</div>


					</div>
					<div class="form-group">
						<label for="" class="col-md-2">私密文章:</label>
						<div class="col-md-3">
							<input type="checkbox">&nbsp;公开
						</div>
						<div class="col-md-7"></div>

					</div>
					<br> <br>


					<div class="form-group text-right">

						<a class="btn btn-default" data-dismiss="modal"
							href="javascript:void(0)" class="form-control">取消</a>
						<button class="btn btn-default" class="form-control">保存为草稿</button>
						<button class="btn btn-primary" type="submit">发表文章</button>
					</div>


				</div>
			</div>
		</div>
	</form>
	<!-- 登录窗口 -->





	<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>


	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script
		src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>