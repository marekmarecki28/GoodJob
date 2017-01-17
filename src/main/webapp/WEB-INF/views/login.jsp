<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login page</title>
<jsp:include page="../fragments/headLayout.jsp"/>

</head>
<body onload='document.loginForm.username.focus();'>

	<div class="container">
		<div class="starter-template">
		<div id="loginbox" style="margin-top: 50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
			<div class="panel panel-default">
				<div class="panel-heading">
					<div class="panel-title">Sign In</div>
					<div
						style="float: right; font-size: 80%; position: relative; top: -10px">
						<a href="forgotPassword">Forgot password?</a>
					</div>
				</div>
				<div class="panel-body">

					<c:if test="${not empty error}">
						<div class="alert alert-danger">${error}</div>
					</c:if>
					<c:if test="${not empty msg}">
						<div class="alert alert-success">${msg}</div>
					</c:if>

					<c:if test="${empty loginUpdate}">
						<c:url value='j_spring_security_check' var="loginUrl" />
					</c:if>

					<c:if test="${not empty loginUpdate}">
						<c:url value='../j_spring_security_check' var="loginUrl" />
					</c:if>

					<form name='loginForm' action="${loginUrl}" method='POST'
						class="form-horizontal">

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-user"></i></span> <input type="text"
								class="form-control" name="username" placeholder="User"
								required="">
						</div>

						<div style="margin-bottom: 25px" class="input-group">
							<span class="input-group-addon"><i
								class="glyphicon glyphicon-lock"></i></span> <input type="password"
								class="form-control" name="password" placeholder="Password"
								required="">
						</div>

						<div class="input-group">
							<div class="checkbox">
								<label> <input id="login-remember" type="checkbox"
									name="remember-me" value="1"> Remember me
								</label>
							</div>
						</div>

						<div style="margin-top: 10px" class="form-group">
							<!-- Button -->

							<div class="col-sm-12 controls">
								<button type="submit" class="btn btn-success btn-sm">Sign
									in</button>
								<button type="reset" class="btn btn-default btn-sm">Reset</button>
							</div>
						</div>
						
						<div class="form-group">
						<div class="col-md-12 control">
							<div
								style="border-top: 1px solid #888; padding-top: 15px; font-size: 85%">
								Don't have an account! <a href="newuser">
									Sign Up Here </a>
							</div>
						</div>
					</div>
						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</div>

			</div>
		</div>
		</div>
	</div>

<!-- 	<div id="signupbox" style="display: none; margin-top: 50px" -->
<!-- 		class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2"> -->
<!-- 		<div class="panel panel-default"> -->
<!-- 			<div class="panel-heading"> -->
<!-- 				<div class="panel-title">Sign Up</div> -->
<!-- 				<div -->
<!-- 					style="float: right; font-size: 85%; position: relative; top: -10px"> -->
<!-- 					<a id="signinlink" href="#" -->
<!-- 						onclick="$('#signupbox').hide(); $('#loginbox').show()">Sign -->
<!-- 						In</a> -->
<!-- 				</div> -->
<!-- 			</div> -->
<!-- 			<div class="panel-body"> -->
<!-- 				<form id="signupform" class="form-horizontal" role="form"> -->

<!-- 					<div id="signupalert" style="display: none" -->
<!-- 						class="alert alert-danger"> -->
<!-- 						<p>Error:</p> -->
<!-- 						<span></span> -->
<!-- 					</div> -->



<!-- 					<div class="form-group"> -->
<!-- 						<label for="email" class="col-md-3 control-label">Email</label> -->
<!-- 						<div class="col-md-9"> -->
<!-- 							<input type="text" class="form-control" name="email" -->
<!-- 								placeholder="Email Address"> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 					<div class="form-group"> -->
<!-- 						<label for="firstname" class="col-md-3 control-label">First -->
<!-- 							Name</label> -->
<!-- 						<div class="col-md-9"> -->
<!-- 							<input type="text" class="form-control" name="firstname" -->
<!-- 								placeholder="First Name"> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="form-group"> -->
<!-- 						<label for="lastname" class="col-md-3 control-label">Last -->
<!-- 							Name</label> -->
<!-- 						<div class="col-md-9"> -->
<!-- 							<input type="text" class="form-control" name="lastname" -->
<!-- 								placeholder="Last Name"> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 					<div class="form-group"> -->
<!-- 						<label for="password" class="col-md-3 control-label">Password</label> -->
<!-- 						<div class="col-md-9"> -->
<!-- 							<input type="password" class="form-control" name="passwd" -->
<!-- 								placeholder="Password"> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 					<div class="form-group"> -->
<!-- 						<label for="icode" class="col-md-3 control-label">Invitation -->
<!-- 							Code</label> -->
<!-- 						<div class="col-md-9"> -->
<!-- 							<input type="text" class="form-control" name="icode" -->
<!-- 								placeholder=""> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 					<div class="form-group"> -->
<!-- 						Button -->
<!-- 						<div class="col-md-offset-3 col-md-9"> -->
<!-- 							<button id="btn-signup" type="button" class="btn btn-info"> -->
<!-- 								<i class="icon-hand-right"></i> &nbsp Sign Up -->
<!-- 							</button> -->
<!-- 							<span style="margin-left: 8px;">or</span> -->
<!-- 						</div> -->
<!-- 					</div> -->

<!-- 					<div style="border-top: 1px solid #999; padding-top: 20px" -->
<!-- 						class="form-group"> -->

<!-- 						<div class="col-md-offset-3 col-md-9"> -->
<!-- 							<button id="btn-fbsignup" type="button" class="btn btn-primary"> -->
<!-- 								<i class="icon-facebook"></i> Sign Up with Facebook -->
<!-- 							</button> -->
<!-- 						</div> -->

<!-- 					</div> -->



<!-- 				</form> -->
<!-- 			</div> -->
<!-- 		</div> -->
<!-- 	</div> -->
<jsp:include page="../fragments/footerLayout.jsp"/>
</body>
</html>