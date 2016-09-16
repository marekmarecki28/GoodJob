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

    <div class="container">

      <div class="starter-template">
        <h1>Main page</h1>
        <p class="lead">Lorem ipsum<br> dolor sit amet</p>
      </div>

    </div><!-- /.container -->
    
    <jsp:include page="../fragments/footerLayout.jsp"/>

  </body>
</html>
