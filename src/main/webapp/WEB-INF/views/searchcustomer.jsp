<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>

<html>

<head>
<jsp:include page="../fragments/headLayout.jsp"/>
</head>

<body>
<br>
	<div class="generic-container mainbox col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">Search Customer</span>
			</div>
			<div class="panel-body">
			
				<form:form modelAttribute="customer" method="post" class="form-horizontal" id="search-owner-form">
				    <fieldset>
				    	<div class="container">
  							<div class="row">
    							<div class="col-xs-4">
									<mytags:inputField label="First name" name="firstname"></mytags:inputField>
									<mytags:inputField label="Last name" name="lastname"></mytags:inputField>
									<mytags:inputField label="Company" name="company"></mytags:inputField>
								</div>
								<div class="col-xs-4">
									<mytags:inputField label="NIP" name="nip"></mytags:inputField>
									<mytags:inputField label="Phone number" name="phone"></mytags:inputField>
									<mytags:inputField label="Email" name="email"></mytags:inputField>
								</div>
								<div class="col-xs-4">
									<mytags:inputField label="Address" name="address"></mytags:inputField>
								</div>
							</div>
						</div>
				        <div class="form-actions">
				            <button type="submit" class="btn btn-info">Search</button>
				        </div>
				    </fieldset>
				</form:form>
				
			</div>
		</div>
	</div>

	<div class="generic-container mainbox col-md-10 col-md-offset-1 col-sm-8 col-sm-offset-2">
		<div class="panel panel-default">
			<div class="panel-heading">
				<a href="newCustomer" class="btn btn-info">Create new customer</a>
			</div>
			<div class="panel-body">
				<div class="table-responsive">
					<table class="table table-striped table-hover">
						<thead>
							<tr>
								<th>Firstname</th>
								<th>Lastname</th>
								<th>Company</th>
								<th>NIP</th>
								<th>Phone</th>
								<th>Email</th>
								<th>Address</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${customers}" var="customer">
								<tr>
									<td>${customer.firstname}</td>
									<td>${customer.lastname}</td>
									<td>${customer.company}</td>
									<td>${customer.nip}</td>
									<td>${customer.phone}</td>
									<td>${customer.email}</td>
									<td>${customer.address}</td>
									<td>
										<a href="edit?id=${customer.customerId}">Edit</a>
										&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="deleteQuestion?id=${customer.customerId}">Delete</a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					
				</div>
			</div>
		</div>
	</div>
	

<jsp:include page="../fragments/footerLayout.jsp"/>
</body>
</html>