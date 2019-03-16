<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test.jsp</title>
</head>
<body>
	<form action="${pageContext.request.contextPath }/test.do" method="post">
		name:<input type="text" name="name"> <br>
		<input type="submit" value="测试">
	
	</form>

</body>
</html>