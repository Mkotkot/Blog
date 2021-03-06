<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Blog Update</title>
<script src="/Blog/view_res/js/html5shiv.min.js"></script>
<script src="/Blog/view_res/js/respond.min.js"></script>
</head>
<body>
	<link rel="stylesheet" href="/Blog/view_res/css/bootstrap.css">
	<link rel="stylesheet" href="/Blog/view_res/css/font-awesome.min.css">
	<link rel="stylesheet" href="/Blog/view_res/css/foterstyle.css">
	<link rel="stylesheet" href="/Blog/view_res/css/navstyle.css">
	<link rel="stylesheet" href="/Blog/view_res/css/newblo.css">
	<link rel='stylesheet'
		href='http://fonts.googleapis.com/css?family=Droid+Serif'>


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

				<li onclick="activehome()" id="_home" class=""><a
					href="/Blog/Blogs">Home</a></li>
				<li onclick="activeabut()" id="_about" class=""><a href="/Blog/user_data">About
						Me</a></li>
				<li onclick="activenewblog()" id="_newblog" class=""><a
					href="/Blog/NewBlog">New BLOG</a></li>
			</ul>
		</div>
	</div>
	</nav>


	<div class="blo-1">
		<div class="container">


			<form id="the_form" onsubmit="return blog_form_Valid()" method="post"
				action="${pageContext.request.contextPath}/updateblog.html">
				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<h3>
							<span class="label label-default lead">Bloh Titel</span>
						</h3>

						<div class=" marg_buton10 form-group form-group-resize-new-blo">
							<input onblur="blog_titel_Valid()" id="_titel" type="text"
								class="form-control " name="titel" value="${blog.titel }" placeholder="Blog Titel">
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 ">
						<div id="__titel" class="alert alert-danger marg_buton11 hidden "
							role="alert">OPS !! Not Valid Make Sure From Blog Titel</div>
					</div>
				</div>

				<h3>
					<span class="label label-default lead">BLO Supject</span>
				</h3>

				<div class="form-group">
					<textarea id="_supject" name="subject"  type="text"  class="form-control "
						placeholder="BLO Supject">${blog.subject } </textarea>
				</div>

				<div class="row">
					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
						<div class=" marg_buton10 form-group form-group-resize-new-blo">
							<button  type="submit" onclick="blog_form_Valid()"
								class="btn btn-primary lead bold-font">Save BLOG</button>
						</div>
					</div>

					<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margn-top-70">
						<div id="__form" class="alert alert-danger hidden" role="alert">OPS
							!! Not Valid Check The Fildes</div>
					</div>
				</div>
			</form>
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
	<script src="/Blog/view_res/js/newblog.js"></script>
	<script src="/Blog/view_res/js/activenav.js"></script>
</body>
</html>