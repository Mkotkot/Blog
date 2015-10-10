<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Personal Data</title>
<script src="/Blog/view_res/js/html5shiv.min.js"></script>
<script src="/Blog/view_res/js/respond.min.js"></script>
<link rel="stylesheet" href="/Blog/view_res/css/bootstrap.css">
<link rel="stylesheet" href="/Blog/view_res/css/font-awesome.min.css">
<link rel="stylesheet" href="/Blog/view_res/css/navstyle.css">
<link rel="stylesheet" href="/Blog/view_res/css/foterstyle.css">

<link rel="stylesheet" href="/Blog/view_res/css/userform.css">
<link rel='stylesheet'
	href='http://fonts.googleapis.com/css?family=Droid+Serif'>

<link
	href="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css"
	rel="stylesheet" type="text/css" />
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

				<li onclick="activehome()" id="_home" class=""><a
					href="/Blog/Blogs">Home</a></li>
				<li onclick="activeabut()" id="_about" class="active"><a
					href="/Blog/user_data">About Me</a></li>
				<li onclick="activenewblog()" id="_newblog" class=""><a
					href="/Blog/NewBlog">New BLOG</a></li>
			</ul>
		</div>
	</div>
	</nav>


	<div class="container">
		<button id="enabletheinputs" class="pull-right btn-info btn ">Edit</button>
	</div>
	<div id="edit-user-form-1">

		<div class="form-new-user">
			<div class="container">
				<form id="the_form" onsubmit="return user_form_Valid()"
					method="post" action="updateUser.html">


					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<h3>
								<span class="label label-default lead">Name</span>
							</h3>

							<div class=" marg_buton10 form-group form-group-resize-new-blo">
								<input onblur="user_Name_Valid()" id="_name" type="text"
									class="form-control " name="name"
									value="${sessionScope.current_user.name }"
									placeholder="Name (FristName FamilyName) Such AS Barack Obama"
									readonly>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margn-top-10">
							<div id="__name" class="alert alert-danger hidden " role="alert">OPS
								!! Not Valid Make Sure From Your Name</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<h3>
								<span class="label label-default lead">Email</span>
							</h3>

							<div class=" marg_buton10 form-group form-group-resize-new-blo">
								<input id="_email" type="text" onblur="user_email_Valid()"
									class="form-control " name="email"
									value="${sessionScope.current_user.email }"
									placeholder=" Email
									ID" readonly>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margn-top-10">
							<div id="__email" class="alert alert-danger hidden" role="alert">OPS
								!! Not Valid Make Sur From Your Email</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<h3>
								<span class="label label-default lead">PassWord</span>
							</h3>

							<div class=" marg_buton10 form-group form-group-resize-new-blo">
								<input id="_password" onblur="user_password_Valid()"
									type="password" class="form-control " name="password"
									value="${sessionScope.current_user.password }"
									placeholder="
									PassWord From 6 char to 40 " readonly>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margn-top-10">
							<div id="__password" class="alert alert-danger hidden"
								role="alert">OPS !! Not Valid Make Sur From Your PassWord
								Min(6:40)</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<h3>
								<span class="label label-default lead">Renter PassWord</span>
							</h3>

							<div class=" marg_buton10 form-group form-group-resize-new-blo">
								<input onblur="user_repassword_Valid()" id="_repassword"
									type="password" class="form-control " name="password2"
									placeholder="Renter PassWord" readonly>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margn-top-10">
							<div id="__repassword" class="alert alert-danger hidden"
								role="alert">OPS !! Not Valid Make Sur From Your
								RE-PassWord</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<h3>
								<span class="label label-default lead">Date Of Birth</span>
							</h3>
							<div class=" marg_buton10 form-group form-group-resize-new-blo">
								<div id="datepicker" class="input-group date"
									data-date-format="dd-mm-yyyy">
									<input onblur="user_date_Valid()" id="_date" name="dateOfBirth"
										value="${sessionScope.current_user.dateOfBirth }"
										class="
										form-control" type="text" placeholder=""
										readonly /> <span class="input-group-addon"><i
										class="glyphicon glyphicon-calendar"></i></span>
								</div>

							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margn-top-10">
							<div id="__date" class="alert alert-danger hidden" role="alert">OPS
								!! Not Valid Make Sur From Your Date Of Birth</div>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<h3>
								<span class="label label-default lead">Country</span>
							</h3>

							<div class=" marg_buton10 form-group form-group-resize-new-blo">
								<input id="_country" onblur="user_country_Valid()" type="text"
									class="form-control " name="address.country"
									value="${sessionScope.current_user.address.country }"
									placeholder="
									Country" readonly>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margn-top-10">
							<div id="__country" class="alert alert-danger hidden"
								role="alert">OPS !! Not Valid Make Sur From Your Country</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<h3>
								<span class="label label-default lead">City</span>
							</h3>

							<div class=" marg_buton10 form-group form-group-resize-new-blo">
								<input id="_city" onblur="user_city_Valid()" type="text"
									class="form-control " name="address.city"
									value="${sessionScope.current_user.address.city }"
									placeholder="
									City" readonly>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margn-top-10">
							<div id="__city" class="alert alert-danger hidden" role="alert">OPS
								!! Not Valid Make Sur From Your City</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<h3>
								<span class="label label-default lead">ZIP/Post Code</span>
							</h3>

							<div class=" marg_buton10 form-group form-group-resize-new-blo">
								<input id="_zip" onblur="user_zip_Valid()" type="text"
									class="form-control " name="address.zip"
									value="${sessionScope.current_user.address.zip }"
									placeholder="
									ZIP/Post Code" readonly>
							</div>
						</div>

						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12 margn-top-10">
							<div id="__zip" class="alert alert-danger hidden" role="alert">OPS
								!! Not Valid Make Sur From Your ZIP/Post Code</div>
						</div>
					</div>

					<div class="row">
						<div class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
							<div class=" marg_buton10 form-group form-group-resize-new-blo">
								<button type="submit" onclick="user_form_Valid()"
									class="btn btn-primary lead bold-font">Save Update</button>
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
	<script src="/Blog/view_res/js/newuseracount.js"></script>
	<script src="/Blog/view_res/js/enableedit.js"></script>
	<script src="/Blog/view_res/js/activenav.js"></script>

	<script
		src="http://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>
	<script src="/Blog/view_res/js/datePickersetting.js"></script>
</body>
</html>