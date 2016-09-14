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

	<div id="mainWrapper">
		<div class="login-container">
			<div class="login-card">
				<div class="login-form">

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

					<form name='loginForm' action="${loginUrl}" method='POST' class="form-horizontal">

						<table>
							<tr>
								<td>User:</td>
								<td><input type='text' name='username' value=''></td>
							</tr>
							<tr>
								<td>Password:</td>
								<td><input type='password' name='password' /></td>
							</tr>

							<!-- if this is login for update, ignore remember me check -->
							<c:if test="${empty loginUpdate}">
								<tr>
									<td></td>
									<td>Remember Me: <input type="checkbox" name="remember-me" /></td>
								</tr>
							</c:if>

							<tr>
								<td colspan='2'><input name="submit" type="submit"
									value="submit" /></td>
							</tr>
						</table>

						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}" />
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>