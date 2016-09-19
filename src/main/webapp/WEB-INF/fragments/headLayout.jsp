<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.4/css/bootstrap.min.css" integrity="sha384-2hfp1SzUoho7/TsGGGDaFdsuuDL0LX2hnUp6VkX3CUQ2K4K+xjboZdsXyp4oUHZj" crossorigin="anonymous"> -->
	
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	
	<spring:url value="/resources/css/sticky-footer.css" var="stickyF"/>
    <link href="${stickyF}" rel="stylesheet"/>
    
    <spring:url value="/resources/css/starter-template.css" var="bootstrapCss"/>
    <link href="${bootstrapCss}" rel="stylesheet"/>
    
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
	    <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="." class="navbar-brand">Strona glowna</a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
            	<li class="active"><a href=".">Home</a></li>
                <li><a href="about">About</a></li>
                <li><a href="contact">Contact</a></li>
            </ul>
            
            <div class="nav navbar-nav navbar-right">
		            <sec:authorize access="isAuthenticated()"> 
			      	<sec:authentication var="user" property="principal" />
			      		 <font color="#B6BDBF">Witaj, ${user.username}</font>&nbsp&nbsp<a href="logout" class="btn btn-default navbar-btn">Wyloguj</a>
			      	</sec:authorize>
			      	<sec:authorize access="isAnonymous()">
			        	<a href="login" style="margin-right: 50px" class="btn btn-default navbar-btn">Sign in</a>
			        </sec:authorize>
            </div>

        </div><!--/.nav-collapse -->
    </div>
</div>
<!-- 	<div class="navbar navbar-fixed-top navbar-inverse"> -->
<!--       <a class="navbar-brand" href="#">GoodJob</a> -->
<!--       <ul class="nav navbar-nav"> -->
<!--         <li class="nav-item active"> -->
<!--           <a class="nav-link" href="#">Home</a> -->
<!--         </li> -->
<!--         <li class="nav-item"> -->
<!--           <a class="nav-link" href="#">About</a> -->
<!--         </li> -->
<!--         <li class="nav-item"> -->
<!--           <a class="nav-link" href="#">Contact</a> -->
<!--         </li> -->
<!--       </ul> -->
<!--       <span class="navbar-right"> -->
<%--       	<sec:authorize access="isAuthenticated()">  --%>
<%--       	<sec:authentication var="user" property="principal" /> --%>
<%--       		<span class="text-center" style="margin-right: 50px"> <font color="#B6BDBF">Witaj, ${user.username}</font></span> --%>
<%--       	</sec:authorize> --%>
<%--       	<sec:authorize access="isAnonymous()"> --%>
<!--         	<a href="login" style="margin-right: 50px" class="btn btn-default navbar-btn">Sign in</a> -->
<%--         </sec:authorize> --%>
<!--       </span> -->
<!--     </div> -->
</body>