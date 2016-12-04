<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <title>GoodJob</title>
    <spring:url value="/resources/images/favicon.ico" var="icon"/>
    <link rel="shortcut icon" href="${icon}" />
    
	<jsp:include page="../fragments/headLayout.jsp"/>
	
	<spring:url value="/resources/css/starter-template.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
    
  </head>

  <body>

    <div id="signupbox" style="margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-default">
			<div class="panel-body">
			
			<form:form modelAttribute="email" method="post" class="form-horizontal" id="loginForm">
			
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
						<!-- Button -->
						<div class="col-md-offset-3 col-md-9">
							<button id="btn-signup" type="submit" class="btn btn-info">
								<i class="icon-hand-right"></i>Send
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
