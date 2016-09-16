<!DOCTYPE html> 

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="mytags" tagdir="/WEB-INF/tags" %>


<html lang="en">

<jsp:include page="../fragments/headTag.jsp"/>

<body>
<div class="container">

    <form:form modelAttribute="book" method="post" class="form-horizontal" id="add-owner-form">
        <mytags:inputField label="Title" name="title"/>
        <mytags:inputField label="Author" name="author"/>

        <div class="form-actions">
            <button type="submit">Create Book</button>
            <FORM><INPUT Type="button" VALUE="Back" onClick="history.go(-1);return true;"></FORM>
        </div>
    </form:form>
</div>
</body>

</html>
