<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Login page</title>
<jsp:include page="../fragments/headLayout.jsp"/>

</head>
<body onload='document.loginForm.username.focus();'>

	<div id="signupbox" style="margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="panel-title">Sign Up</div>
				<div
					style="float: right; font-size: 85%; position: relative; top: -10px">
					<a id="signinlink" href="login">Sign In</a>
				</div>
			</div>
			<div class="panel-body">
			
			<form:form modelAttribute="user" method="post" class="form-horizontal" id="loginForm">
			
					<div id="signupalert" style="display: none"
						class="alert alert-danger">
						<p>Error:</p>
						<span></span>
					</div>

					<div class="form-group">
						<label for="email" class="col-md-3 control-label">Email</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="username" placeholder="Email Address">
						</div>
					</div>

					<div class="form-group">
						<label for="firstname" class="col-md-3 control-label">First Name</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="firstname" placeholder="First Name">
						</div>
					</div>
					<div class="form-group">
						<label for="lastname" class="col-md-3 control-label">Last Name</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="lastname" placeholder="Last Name">
						</div>
					</div>
					<div class="form-group">
						<label for="password" class="col-md-3 control-label">Password</label>
						<div class="col-md-9">
							<input type="password" class="form-control" name="password" placeholder="Password">
						</div>
					</div>

					<div class="form-group">
						<label for="icode" class="col-md-3 control-label">Invitation Code</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="icode" placeholder="">
						</div>
					</div>

					<div class="form-group">
						<!-- Button -->
						<div class="col-md-offset-3 col-md-9">
							<button id="btn-signup" type="submit" class="btn btn-info">
								<i class="icon-hand-right"></i> &nbsp Sign Up
							</button>
							<span style="margin-left: 8px;">or</span>
						</div>
					</div>

					<div style="border-top: 1px solid #999; padding-top: 20px"
						class="form-group">

						<div class="col-md-offset-3 col-md-9">
							<button id="btn-fbsignup" type="button" class="btn btn-primary">
								<i class="icon-facebook"></i> Sign Up with Facebook
							</button>
						</div>

					</div>

				</form:form>
			</div>
		</div>
	</div>
<jsp:include page="../fragments/footerLayout.jsp"/>
</body>
</html>