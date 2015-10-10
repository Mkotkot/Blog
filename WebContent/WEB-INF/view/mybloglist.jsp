<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>My Blogs</title>
<script src="/Blog/view_res/js/html5shiv.min.js"></script>
<script src="/Blog/view_res/js/respond.min.js"></script>
<link rel="stylesheet" href="/Blog/view_res/css/bootstrap.css">
<link rel="stylesheet" href="/Blog/view_res/css/font-awesome.min.css">
<link rel="stylesheet" href="/Blog/view_res/css/bloliststyle.css">
<link rel="stylesheet" href="/Blog/view_res/css/navstyle.css">
<link rel="stylesheet" href="/Blog/view_res/css/foterstyle.css">
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

		<!--form for search -->
		<form class=" hidden-xs hidden-sm  navbar-form navbar-left"
			role="search" action="searchBlog.html" method="get">
			<div class="form-group">
				<input type="text" name="titel" class=" form-input-header form-control"
					placeholder="Find Blog ...">
			</div>
			<button type="submit" class="btn btn-default">Search</button>
		</form>
		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse " id="mynavpar">
			<ul class="nav navbar-nav navbar-right">

				<li onclick="activehome()" id="_home" class="active"><a
					href="/Blog/Blogs">Home</a></li>
				<li onclick="activeabut()" id="_about" class=""><a
					href="/Blog/user_data">About Me</a></li>
				<li onclick="activenewblog()" id="_newblog" class=""><a
					href="/Blog/NewBlog">New BLOG</a></li>
			</ul>
		</div>
	</div>
	</nav>

 
	<div class="blop-list">
		<div class="container">
			<div class="inner-blop-list">
				<c:forEach items="${listblogs }" var="blogg">
					<div class="blo-item">
						<div class="blo-item-top row">
							<div class="col-sm-6 col-xs-12">
								<a class="none-decrothon" href="#"><h3>${blogg.titel }</h3></a>
							</div>
							<div class="col-sm-6 hidden-xs text-right">
								<a href="/Blog/deleteBlog/${blogg.id }"
									class="wight-c btn btn-danger"> Delete</a> <a
									href="/Blog/BlogData/${blogg.id }"
									class=" wight-c btn btn-info"> Edit</a>
							</div>
						</div>
						<div id="${blogg.id }" class="sup-text-blo plog-text1 plog-text0">
							<p class="lead">${blogg.subject }</p>

							<button onclick="readmorefun(this)"
								class="btn btn-primary center-block readd">read more..</button>
						</div>
					</div>

				</c:forEach>
			</div>
		</div>
	</div>

	<dir>
		<p>------ ${sessionScope.current_user.name }</p>
		<p>------ ${sessionScope.current_user.email }</p>
		<p>------ ${sessionScope.current_user.address.city }</p>
		<p>------ ${sessionScope.current_user.password }</p>
	</dir>
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
	<script src="/Blog/view_res/js/readmore.js"></script>
</body>
</html>