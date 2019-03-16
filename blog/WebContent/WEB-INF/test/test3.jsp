<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
        <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.js"></script>
        <script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.js"></script>
</head>
<body>
<li class="dropdown">
      <a href="javascript:void(0);" class="dropdown-toggle" data-toggle="dropdown" id="dropdownMenu1">
           课程
      </a>
      <ul class="dropdown-menu"  id="dropDownCur">
          <li><a href="#">jmeter</a></li>
          <li><a href="#">jmeter1</a></li>
          <li><a href="#">jmeter2</a></li>
          
      </ul>
</li>

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
</script>

</body>
</html>