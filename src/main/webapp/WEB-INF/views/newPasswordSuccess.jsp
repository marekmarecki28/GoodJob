<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
 
<html>
<head>
	<jsp:include page="../fragments/headLayout.jsp"/>
</head>
<body>
        
        <div class="alert alert-success lead">
            ${success}
        </div>

    
    <jsp:include page="../fragments/footerLayout.jsp"/>
</body>
 
</html>