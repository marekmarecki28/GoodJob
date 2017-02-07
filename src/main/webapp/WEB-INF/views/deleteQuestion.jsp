<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="datatables" uri="http://github.com/dandelion/datatables" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<jsp:include page="../fragments/headTag.jsp"/>
</head>
<body>
 <div align="center">
	        <h1>Delete Customer?</h1>
	        <p>Are you sure, you want to delete this customer? This cannot be undone.</p>
	        <a href="delete?id=${customer.customerId}">Yes</a>
	        <a href="searchcustomer">No</a>
 </div>
</body>
</html>