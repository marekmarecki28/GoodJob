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
	        <h1>Book List</h1>
	        <h2><a href="new">New Book</a></h2>
	        
        	<table border="1">
	        	<th>Title</th>
	        	<th>Author</th>
	        	<th>Actions</th>
	        	
				<c:forEach var="book" items="${selections}">
	        	<tr>
					<td>${book.title}</td>
					<td>${book.author}</td>
					<td>
						<a href="edit?id=${book.id}">Edit</a>
						&nbsp;&nbsp;&nbsp;&nbsp;
						<a href="deleteQuestion?id=${book.id}">Delete</a>
					</td>
	        	</tr>
				</c:forEach>	        	
        	</table>
        </div>
        <a href="find">Back</a>
</body>
</html>