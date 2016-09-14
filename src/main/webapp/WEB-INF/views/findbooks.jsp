<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="booktags" tagdir="/WEB-INF/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<jsp:include page="../fragments/headTag.jsp"/>
<body>

<h1>Find booksy</h1>
	<spring:url value="/books" var="formUrl"/>
    <form:form modelAttribute="book" action="${fn:escapeXml(formUrl)}" method="get" class="form-horizontal" id="search-owner-form">
        <fieldset>
            <booktags:inputField label="Book Title" name="title"></booktags:inputField>
            <div class="form-actions">
                <button type="submit">Find Book</button>
            </div>
        </fieldset>
    </form:form>
    
</body>
</html>