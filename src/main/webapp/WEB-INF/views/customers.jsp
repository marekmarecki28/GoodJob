<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<html>

<head>
<jsp:include page="../fragments/headLayout.jsp"/>
</head>

<body>

	<div class="generic-container">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">
				<span class="lead">List of Customers </span>
			</div>
			<table class="table table-hover">
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

<jsp:include page="../fragments/footerLayout.jsp"/>
</body>
</html>