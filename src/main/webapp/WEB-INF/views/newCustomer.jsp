<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Login page</title>
<jsp:include page="../fragments/headLayout.jsp"/>

</head>
<body onload='document.loginForm.username.focus();'>

		<div class="alert alert-success lead">
            ${success}
        </div>

	<div id="signupbox" style="margin-top: 50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="panel-title">Create New Customer</div>
			</div>
			<div class="panel-body">
			
			<form:form modelAttribute="customer" method="post" class="form-horizontal" id="newCustomer">

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
						<label for="company" class="col-md-3 control-label">Company</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="company" placeholder="Company">
						</div>
					</div>

					<div class="form-group">
						<label for="nip" class="col-md-3 control-label">NIP</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="nip" placeholder="Nip">
						</div>
					</div>
					
					<div class="form-group">
						<label for="phone" class="col-md-3 control-label">Phone Number</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="phone" placeholder="Phone Number">
						</div>
					</div>
					
					<div class="form-group">
						<label for="email" class="col-md-3 control-label">Email</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="email" placeholder="Email">
						</div>
					</div>
					
					<div class="form-group">
						<label for="address" class="col-md-3 control-label">Address</label>
						<div class="col-md-9">
							<input type="text" class="form-control" name="address" placeholder="Address">
						</div>
					</div>

					<div class="form-group">
						<!-- Button -->
						<div class="col-md-offset-3 col-md-9">
							<button id="btn-signup" type="submit" class="btn btn-info">
								<i class="icon-hand-right"></i> Create
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