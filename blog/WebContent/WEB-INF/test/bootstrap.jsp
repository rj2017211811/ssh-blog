<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Bootstrap</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	
</head>
<body>
	<div class="container">
		<h1>Bootstrap</h1>
		<p>bootstrap的container容器会自动居中222222222222222222222222222222222222222222222222222222222222222
			2222222222222222222222222222233333333333</p>

	</div>
	<div class="container-fluid">
		<p>.container-fluid会占据视图宽度的100%
	</div>
	<div class="container">
		<h1>下面是一个两行三列的表格col-md只有桌面显示器</h1>
		<div class="row">
			<div class="col-md-4">1列</div>
			<div class="col-md-4">2列</div>
			<div class="col-md-4">3列</div>
		</div>
		<div class="row">

			<div class="col-md-4">1列</div>
			<div class="col-md-4">2列</div>
			<div class="col-md-4">3列</div>
		</div>
	</div>
	<div class="container">
		<h1>下面是一个两行三列的表格col-适合所有设备</h1>
		<div class="row">
			<div class="col-4" style="background-color: silver;">1列</div>
			<div class="col-4" style="background-color: yellow;">2列</div>
			<div class="col-4" style="background-color: blue;">3列</div>
		</div>
		<div class="row">

			<div class="col-4" >1列</div>
			<div class="col-4">2列</div>
			<div class="col-4">3列</div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<div class="col-sm-4" style="background-color: green;">在移动设备上，即屏幕宽度小于
				576px 时，。</div>
			<div class="col-sm-8" style="background-color: blue;">四个列将会上下堆叠排版</div>
		</div>

	</div>
	<div class="container">
		<h1>title1</h1>
		<h2>title2</h2>
		<h3>title3</h3>
		<h4>title4</h4>
		<h5>title5</h5>
		<h6>title7</h6>

	</div>
	<div class="container">
		<h1>标题类:display-</h1>
		<h1 class="display-1">title1</h1>
		<h1 class="display-2">title1</h1>
		<h1 class="display-3">title1</h1>
		<h1 class="display-4">title1</h1>
		<p class="display-4">p</p>
	</div>
	<div class="container">
		<h1>title</h1>
		<small>title2</small>
		<h1>mark</h1>
		<p>
			mark显示
			<mark>高亮文本</mark>
		</p>
		<p>
			中国加入了<abbr title="world-organization">WTO</abbr>
		</p>
	</div>
	<div class="container">
		<blockquote class="blockquote">
			For 50 years, WWF has been protecting the future of nature. The
			world's leading conservation organization, WWF works in 100 countries
			and is supported by 1.2 million members in the United States and
			close to 5 million globally.
			<footer class="blockquote-footer">From WWF's website</footer>
		</blockquote>
	</div>
	<div class="container">
		<h4>有序列表</h4>
		<ol>
			<li>li1</li>
			<li>li2</li>
			<li>li3</li>

		</ol>
		<h4>无序列表</h4>
		<ul>
			<li>li1</li>
			<li>li2</li>
			<li>li3</li>

		</ul>
		<h4>未定义样式列表</h4>
		<ul class="list-unstyled">
			<li>li1</li>
			<li>li2</li>
			<li>li3</li>

		</ul>
		<h4>内联列表</h4>
		<ul class="list-inline">
			<li>li1</li>
			<li>li2</li>
			<li>li3</li>

		</ul>
		<h4>自定义列表</h4>
		<dl>
			<dt>title</dt>
			<dd>items</dd>
			<dt>title</dt>
			<dd>items</dd>
		</dl>


	</div>
	<div class="container">

		<h4>水平的自定义列表</h4>
		<dl class="dl-horizontal">
			<dt>title1</dt>
			<dd>items</dd>
			<dt>title2</dt>
			<dd>items</dd>
		</dl>
	</div>
	<div class="container">
		<code>&lt;html&gt;</code>
		<code>&lt;header&gt;</code>
		<h4>用pre标签定义代码,lt gt</h4>
		<pre>
			&lt;article&gt;
			    &lt;h1&gt;Article heading&lt;/h1&gt;
			&lt;/article&gt;
		
		</pre>

	</div>
	<div class="container">
		<h1>基本样式的表格</h1>
		<table class="table">
			<thead>
				<tr>
					<th>#</th>
					<th>name</th>
				</tr>

			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Join</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Mike</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Joy</td>
				</tr>
				<tr>
					<td>4</td>
					<td>Spsin</td>
				</tr>



			</tbody>

		</table>

	</div>
	<div class="container">
		<h4>斑马线样式条纹</h4>
		<table class="table table-striped">
			<thead>
				<tr>
					<th>#</th>
					<th>name</th>
				</tr>

			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Join</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Mike</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Joy</td>
				</tr>
				<tr>
					<td>4</td>
					<td>Spsin</td>
				</tr>



			</tbody>

		</table>


	</div>

	<div class="container">
		<h4>边框表格</h4>
		<table class="table table-bordered">
			<thead>
				<tr>
					<th>#</th>
					<th>name</th>
				</tr>

			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Join</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Mike</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Joy</td>
				</tr>
				<tr>
					<td>4</td>
					<td>Spsin</td>
				</tr>



			</tbody>

		</table>


	</div>
	<div class="container">
		<h4>悬停表格</h4>
		<table class="table table-hover">
			<thead>
				<tr>
					<th>#</th>
					<th>name</th>
				</tr>

			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Join</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Mike</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Joy</td>
				</tr>
				<tr>
					<td>4</td>
					<td>Spsin</td>
				</tr>



			</tbody>

		</table>


	</div>
	<div class="container">
		<h4>紧凑表格</h4>
		<table class="table table-condensed">
			<thead>
				<tr>
					<th>#</th>
					<th>name</th>
				</tr>

			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Join</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Mike</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Joy</td>
				</tr>
				<tr>
					<td>4</td>
					<td>Spsin</td>
				</tr>



			</tbody>

		</table>


	</div>
	<div class="container">
		<h4>表格类联合</h4>
		<table
			class="table table-condensed table-hover table-bordered table-striped">
			<thead>
				<tr>
					<th>#</th>
					<th>name</th>
				</tr>

			</thead>
			<tbody>
				<tr>
					<td>1</td>
					<td>Join</td>
				</tr>
				<tr>
					<td>2</td>
					<td>Mike</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Joy</td>
				</tr>
				<tr>
					<td>4</td>
					<td>Spsin</td>
				</tr>



			</tbody>

		</table>


	</div>
	<div class="container">
		<table
			class="table table-bordered table-striped table-hover table-condensed">
			<thead>
				<tr>
					<th>#</th>
					<th>name</th>

				</tr>

			</thead>
			<tbody>
				<tr class="info">
					<td>1</td>
					<td>xiaoming</td>

				</tr>
				<tr class="success">
					<td>2</td>
					<td>x242g</td>

				</tr>


			</tbody>
		</table>

	</div>
	<div class="container">
		<h4>表单</h4>
		<form action="#" role="form">
			<div class="form-group">
				<label for="name">名称</label> <input type="text" class="form-control"
					placeholder="请输入名称">
			</div>
			<div class="form-group">
				<label for="inputfile">文件输入</label> <input type="file"
					id="inputfile">
				<p class="help-block">块级元素帮助文本</p>
			</div>
			<div class="checkbox">
				<input type="checkbox">请打勾
			</div>
			<button type="submit" class="btn btn-default">提交</button>
		</form>
	</div>
	<div class="container">
		<h4>内联表单</h4>
		<form action="#" role="form" class="form-inline">
			<div class="form-group">
				<label for="name" class="sr-only">名称</label> <input type="text"
					class="form-control" placeholder="请输入名称">
			</div>
			<div class="form-group">
				<label for="inputfile" class="sr-only">文件输入</label> <input
					type="file" id="inputfile">
				<p class="help-block">块级元素帮助文本</p>
			</div>
			<div class="checkbox">
				<input type="checkbox">请打勾
			</div>
			<button type="submit" class="btn btn-default">提交</button>
		</form>
	</div>
	<div class="container">
		<form class="form-horizontal" role="form">
			<div class="form-group">
				<label for="firstname" class="col-sm-2 control-label">名字</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="firstname"
						placeholder="请输入名字">
				</div>
			</div>
			<div class="form-group">
				<label for="lastname" class="col-sm-2 control-label">姓</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" id="lastname"
						placeholder="请输入姓">
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<div class="checkbox">
						<label> <input type="checkbox">请记住我
						</label>
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<button type="submit" class="btn btn-default">登录</button>
				</div>
			</div>
		</form>
	</div>
	<div class="container">
		<form action="#" role="form">
			<div class="form-group">
				<label for="name">文本框</label>
				<textarea rows="3" class="form-control"></textarea>
			
			</div>
			<label for="">单选框</label>
			<div class="radio">
				<label>
					<input type="radio" class="radio" name="radios" checked>
				</label>
			
			</div>
			<div class="radio">
				<label>
					<input type="radio" class="radio" name="radios">
				</label>
			
			</div>
			<label for="">复选框</label>
			<div class="checkbox">
				<label>
					<input type="checkbox" class="checkbox" >
				</label>
			
			</div>
			<div class="checkbox">
				<label>
					<input type="checkbox" class="checkbox" >
				</label>
			
			</div>
			<label>内联单选框和复选框</label>
			<div class="radio-inline">
				<label>
					<input type="radio" class="radio" name="radios2">
				</label>
				<label>
					<input type="radio" class="radio" name="radios2">
				</label>
			
			
			</div>
			<div class="checkbox-inline">
				<label>
					<input type="checkbox" class="checkbox" name="radios2">
				</label>
				<label>
					<input type="checkbox" class="checkbox" name="radios2">
				</label>
			
			
			</div>
		</form>
	</div>
	<div class="container">
		<form action="#" role="form">
			<div class="form-group">
				<label for="name">选择列表</label>
				<select class="form-control">
					<option value="1">1</option>
				    <option value="2">2</option>
				    <option value="3">3</option>
				    <option value="4">4</option>
				</select>
				<label for="name">可多选的选择列表</label>
				<select multiple class="form-control">
					<option value="1">1</option>
				    <option value="2">2</option>
				    <option value="3">3</option>
				    <option value="4">4</option>
				</select>
			</div>
		</form>
	
	</div>
	<div class="container">
		<form role="form">
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">姓名</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" placeholder="请输入姓名">
					<span class="help-block">姓名为8-16位之间</span>
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">邮箱</label>
				<div class="col-sm-10">
					<p class="form-control-static">1765770246@qq.com</p>
				</div>
			</div>
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">密码</label>
				<div class="col-sm-10"><input type="password" class="form-control" placeholder="请输入密码"></div>
			</div>
		</form>	
	</div>
	<div class="container">
		<form action="" role="form">
			<div class="form-group">
				<label for="name" class="col-sm-2 control-label">姓名 </label>
				<div class="col-sm-10">
					<input type="text" class="form-control">
				</div>
			</div>
		</form>
	</div>
	<div class="container">
		<h4>基本按钮</h4>
		<button class="btn" type="button">按钮1</button>
		<h4>默认按钮</h4>
		<button class="btn btn-default" type="button">按钮2</button>
		<h4>原始按钮</h4>
		
		<button type="button" class="btn btn-primary">按钮4</button>
		<h4>成功按钮</h4>
		<button type="button" class="btn btn-success">按钮3</button>
		<h4>信息按钮</h4>
		<button type="button" class="btn btn-info">按钮5</button>
		<h5>谨慎操作按钮</h5>
		<button type="button" class="btn btn-warning">按钮6</button>
		<h5>危险操作按钮</h5>
		<button type="button" class="btn btn-danger">按钮7</button>
		<h6>链接按钮</h6>
		<button class="btn btn-link" type="button">按钮8</button>
		<h5>制作一个大按钮</h5>
		<button class="btn btn-lg">按钮9</button>
		<h5>制作一个小按钮</h5>
		<button class="btn btn-sm">按钮10</button>
		<h5>制作一超小按钮</h5>
		<button class="btn btn-default btn-xs" type="button">按钮11</button>
	</div>
	<nav class="navbar navbar-default">
  <div class="container">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">Brand</a>
    </div>
   
 
      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Link</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">One more separated link</a></li>
          </ul>
        </li>
      </ul>
      <form class="navbar-form navbar-left">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">登录</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Separated link</a></li>
          </ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container -->
   
</nav>



    <script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>

    
   <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
   <script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>  
</body>
</html>