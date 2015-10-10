<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head lang="en">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Login</title>
<script src="/Blog/view_res/js/html5shiv.min.js"></script>
<script src="/Blog/view_res/js/respond.min.js"></script>
<link rel="stylesheet" href="/Blog/view_res/css/bootstrap.css">
<link rel="stylesheet" href="/Blog/view_res/css/font-awesome.min.css">
<link rel="stylesheet" href="/Blog/view_res/css/loginstyle.css">
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
			<a class="navbar-brand"><span>LOGIN</span> To Your Acount </a>
		</div>
		
		<div class="collapse navbar-collapse " id="mynavpar">
            <ul class="nav navbar-nav navbar-right">
                <li  class=""><a>${mes  }</a></li>
            </ul>
        </div>
	</div>
	</nav>

	<div class="logo-letter">
		<div class="container">
			<div class="inner-logo-letter text-center">
				<span class="glyphicon glyphicon-bitcoin font-size-biger"></span>
			</div>
		</div>
	</div>

	<div class="form-login">
		<div class="container">
			<div class="log-1 col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
				<div class="panel panel-info">
					<div class="panel-heading">
						<div class="panel-title">Sign In ${mes2 }</div>
						<div class="log-2">
							<a href="#">Forgot password?</a>
						</div>
					</div>

					<div class="log-3 panel-body">


						<form onsubmit=" return login_form_Valid() "
							class="form-horizontal" method="post" action="checkuser">

							<div class="input-group log-5">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-user"></i></span> <input  id="_email"
									type="text" class="form-control" name="email" value=""
									placeholder="email">
							</div>

							<div class="input-group log-5">
								<span class="input-group-addon"><i
									class="glyphicon glyphicon-lock"></i></span> <input id="_password"
									type="password" class="form-control" name="password"
									placeholder="password">
							</div>


							<div class="input-group">
								<div class="checkbox">
									<label> <input id="login-remember" type="checkbox"
										name="remember" value="1"> Remember me
									</label>
								</div>
							</div>

							<div class="form-group log-6">
								<!-- Button -->
								<div class="col-sm-12 controls">
									<button type="submit" onclick="login_form_Valid()"
										class="padingupdown btn btn-success">Login</button>
									<div id="__form" class="alert-danger alert hidden"
										style="float: right; padding: 5px">OPS !! Make Sure From
										Your Password And Email</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12 control">
									<div class="log-7">
										Don't have an account! <a href="/Blog/createNewUser"> Sign Up Here </a>
									</div>
								</div>
							</div>
						</form>
					</div>
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
	<script src="/Blog/view_res/js/loginvalid.js"></script>
</body>
</html>