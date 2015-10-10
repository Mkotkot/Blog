<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Erorr Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="/Blog/view_res/js/html5shiv.min.js"></script>
<script src="/Blog/view_res/js/respond.min.js"></script>

<link rel="stylesheet" href="/Blog/view_res/css/bootstrap.css">
<link rel="stylesheet" href="/Blog/view_res/css/font-awesome.min.css">
<link rel="stylesheet" href="/Blog/view_res/css/bloliststyle.css">
<link rel="stylesheet" href="/Blog/view_res/css/navstyle.css">
<link rel="stylesheet" href="/Blog/view_res/css/foterstyle.css">
<link rel="stylesheet" href="/Blog/view_res/css/pageErorrStyle.css">
<link rel='stylesheet'
	href='http://fonts.googleapis.com/css?family=Droid+Serif'>
</head>
<body>

	<nav class="navbar navbar-default navbar-inverse navbar-fixed-top">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header ">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#mynavpar" aria-expanded="false">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#"><span>M-</span> KOTKOT</a>
		</div>


		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse " id="mynavpar">
			<ul class="nav navbar-nav navbar-right">
				<li onclick="activehome()" id="_home" class=""><a
					href="/Blog/Blogs">Home</a></li>
				<li onclick="activeabut()" id="_about" class=""><a
					href="/Blog/user_data">About Me</a></li>
				<li onclick="activenewblog()" id="_newblog" class=""><a
					href="/Blog/NewBlog">New BLOG</a></li>
			</ul>
		</div>
	</div>
	</nav>

	<!--fenish the nav -->


	<div class="error-div">
		<div class="container">
			<div class="row">
				<div class="text-center">
					<h1 class="sad-code">:(</h1>
				</div>
			</div>
			<div class="row">
				<div class="text-center">
					<h3 class="sad-text">
						<span class="unfortunately">Unfortunately</span> There's Something
						Goes Wrong
					</h3>
				</div>
			</div>

			<div class="row">
				<div class="text-center">
					<h4 class="sad-mes">...</h4>
				</div>
			</div>
		</div>
	</div>



	<div class="copy-right">
		<div class="container">
			<div class="inner-copy-right center-block text-center ">
				<p class="lead">
					Copyright &copy; 2015 <span>Mohamed Kotkot</span> All rights
					reserved
				</p>
			</div>
		</div>
	</div>
	<script src="/Blog/view_res/js/jquery-2.1.3.js"></script>
	<script src="/Blog/view_res/js/bootstrap.min.js"></script>
	<script src="/Blog/view_res/js/activenav.js"></script>
</body>
</html>