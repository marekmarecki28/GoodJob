<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<!-- 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha384-2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj" crossorigin="anonymous"> -->
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	<spring:url value="/resources/css/sticky-footer.css" var="stickyF"/>
    <link href="${stickyF}" rel="stylesheet"/>
    
    <spring:url value="/resources/css/starter-template.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
    
</head>
<body>
	<div class="navbar navbar-fixed-top navbar-inverse">
      <a class="navbar-brand" href="#">GoodJob</a>
      <ul class="nav navbar-nav">
        <li class="nav-item active">
          <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
      </ul>
    </div>
</body>