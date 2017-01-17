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

	<div class="generic-container">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">Search Customer</span>
			</div>
			
			<form:form modelAttribute="customer" method="post" class="form-horizontal" id="search-owner-form">
			    <fieldset>
					<mytags:inputField label="First name" name="firstname"></mytags:inputField>
					<mytags:inputField label="Last name" name="lastname"></mytags:inputField>
					<mytags:inputField label="Company" name="company"></mytags:inputField>
					<mytags:inputField label="NIP" name="nip"></mytags:inputField>
					<mytags:inputField label="Phone number" name="phone"></mytags:inputField>
					<mytags:inputField label="Email" name="email"></mytags:inputField>
					<mytags:inputField label="Address" name="address"></mytags:inputField>
			        <div class="form-actions">
			            <button type="submit">Search</button>
			        </div>
			    </fieldset>
			</form:form>
			
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
							</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		</div>
	</div>

<jsp:include page="../fragments/footerLayout.jsp"/>
</body>
</html>