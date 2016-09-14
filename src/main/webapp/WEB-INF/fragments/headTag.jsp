<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!--
PetClinic :: a Spring Framework demonstration
-->

<head>

    <title>SpringArena ::: Book Store Page (Test)</title>
    
    <spring:url value="/webjars/bootstrap/2.3.0/css/bootstrap.min.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
    

    <spring:url value="/resources/css/invoice.css" var="styleCss"/>
    <link href="${styleCss}" rel="stylesheet"/>
    
<!--     <link href="/resources/css/book.css" rel="stylesheet" type="text/css"/> -->
<!--     <link href="/webjars/bootstrap/2.3.0/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> -->
</head>