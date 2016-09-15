<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
<link href="<c:url value='/resources/css/bootstrap.css' />"
	rel="stylesheet"></link>
<link href="<c:url value='/resources/css/app.css' />" rel="stylesheet"></link>
<link rel="stylesheet" type="text/css"
	href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
</head>
<body onload='document.loginForm.username.focus();'>

	<div class="container">
		<div class="row">
			<div class="col-md-4 col-md-offset-7">
				<div class="panel panel-default">
					<div class="panel-heading">
						<strong class="">Login</strong>
					</div>
					<div class="panel-body">

						<c:if test="${not empty error}">
							<div class="error">${error}</div>
						</c:if>
						<c:if test="${not empty msg}">
							<div class="msg">${msg}</div>
						</c:if>

						<c:if test="${empty loginUpdate}">
							<c:url value='j_spring_security_check' var="loginUrl" />
						</c:if>

						<c:if test="${not empty loginUpdate}">
							<c:url value='../j_spring_security_check' var="loginUrl" />
						</c:if>

						<form name='loginForm' action="${loginUrl}" method='POST'
							class="form-horizontal">

							<div class="form-group">
								<label for="username" class="col-sm-3 control-label">User</label>
								<div class="col-sm-9">
									<input type="text" class="form-control" name="username"
										placeholder="Email" required="">
								</div>
							</div>
							<div class="form-group">
								<label for="password" class="col-sm-3 control-label">Password</label>
								<div class="col-sm-9">
									<input type="password" class="form-control" id="password"
										placeholder="Password" required="">
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-offset-3 col-sm-9">
									<div class="checkbox">
										<label class=""> <input type="checkbox" name="remember-me">Remember
											me
										</label>
									</div>
								</div>
							</div>
							<div class="form-group last">
								<div class="col-sm-offset-3 col-sm-9">
									<button type="submit" class="btn btn-success btn-sm">Sign
										in</button>
									<button type="reset" class="btn btn-default btn-sm">Reset</button>
								</div>
							</div>

							<!-- 							<table> -->
							<!-- 								<tr> -->
							<!-- 									<td>User:</td> -->
							<!-- 									<td><input type='text' name='username' value=''></td> -->
							<!-- 								</tr> -->
							<!-- 								<tr> -->
							<!-- 									<td>Password:</td> -->
							<!-- 									<td><input type='password' name='password' /></td> -->
							<!-- 								</tr> -->

							<!-- 								if this is login for update, ignore remember me check -->
							<%-- 								<c:if test="${empty loginUpdate}"> --%>
							<!-- 									<tr> -->
							<!-- 										<td></td> -->
							<!-- 										<td>Remember Me: <input type="checkbox" -->
							<!-- 											name="remember-me" /></td> -->
							<!-- 									</tr> -->
							<%-- 								</c:if> --%>

							<!-- 								<tr> -->
							<!-- 									<td colspan='2'><input name="submit" type="submit" -->
							<!-- 										value="submit" /></td> -->
							<!-- 								</tr> -->
							<!-- 							</table> -->

							<input type="hidden" name="${_csrf.parameterName}"
								value="${_csrf.token}" />
						</form>
					</div>

				</div>
			</div>
		</div>
	</div>


</body>
</html>