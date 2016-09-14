<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252" />
<title>Spring arena</title>
<spring:url value="/resources/css/style.css" var="styl"/>
<link href="${styl}" rel="stylesheet"/>
</head>
<body>
    
<div class="wrap">

    	<div class="logo"><a href="index.html"><img src="<spring:url value="/resources/images/logo.gif" htmlEscape="true" />" alt="" title="" border="0" /></a></div>
        
        <div id="menu">
            <ul>                                                                       
            <li class="selected"><a href="index.html">home</a></li>
            <li><a href="findbooks">about us</a></li>
            <li><a href="books">my services</a></li>
            <li><a href="#">my work</a></li>
            <li><a href="#">featured clients</a></li>
            <li><a href="#">get in touch</a></li>
            </ul>
        </div>
           
    <div class="user_icon"><img src="/resources/images/user.png" alt="" title="" border="0"/></div>
    
    <div class="welcome_block">
		<h1>Lorem ipsum dolor sit amet
consectetur adipisicing elit sed</h1>
        <p>
Lorem ipsum dolor sit amet, consectetur adipisicing elit...
        </p>
	    <br />
	    <br />
	    <br />
	    <br />
	    <br />
	    <br />
    </div> 
    <!--End of welcome_block-->
    
    
    
    
    
    <div class="main_content">
    		<div class="left_content">
            	<h2>My services</h2>
                
                <div class="services_block">
					<img src="/resources/images/icon1.gif" alt="" title="" border="0" class="icon_left" />
                    <div class="services_details">
                     <h3>Service name</h3>
                    <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt .
                    </p>                    
                    </div>
                </div>
                
                <div class="services_block">
					<img src="/resources/images/icon2.gif" alt="" title="" border="0" class="icon_left" />
                    <div class="services_details">
                     <h3>Service name</h3>
                    <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                    </p>                    
                    </div>
                </div> 
                
                <div class="services_block">
					<img src="/resources/images/icon3.gif" alt="" title="" border="0" class="icon_left" />
                    <div class="services_details">
                    <h3>Service name</h3>
                    <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt.
                    </p>                    
                    </div>
                </div> 
                
                <div class="services_block">
					<img src="/resources/images/icon4.gif" alt="" title="" border="0" class="icon_left" />
                    <div class="services_details">
                     <h3>Service name</h3>
                    <p>
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.
                    </p>                    
                    </div>
                </div> 
                
                

                
                    <h2>About me</h2>
                    
                    <div class="about">
                        <img src="/resources/images/thumb.gif" alt="" title="" border="0" class="thumb" />
                        <p>
Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut  Lorem ipsum dolor sit amet  Lorem ipsum dolor sit amet, consectetur adipisicing elit.
<br /><br />
Sed do eiusmod tempor incididunt ut  Lorem ipsum dolor sit amet Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        </p> 
                        <a href="#"><img src="/resources/images/read_more.gif" alt="" title="" border="0" class="read_more" /></a>                  
                    </div> 

                
                
                
			</div>
            
            
            <div class="right_content">
					<h2>Latest blog news</h2>
                    
                    <div class="news_block">
                    <h4><a href="#">News title here</a></h4>
                    <p>
                    <img src="/resources/images/news_icon.gif" alt="" title="" border="0" class="thumb" />
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut  Lorem ipsum dolor sit amet </p>
                    </div>
                    
                    
                    <div class="news_block">
                    <h4><a href="#">News title here</a></h4>
                    <p>
                    <img src="/resources/images/news_icon.gif" alt="" title="" border="0" class="thumb" />
                    Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut  Lorem ipsum dolor sit amet </p>
                    </div>    
                    
                    <h2>Featured projects</h2>
            
            		<a href="#"><img src="/resources/images/project1.jpg" alt="" title="" border="0" class="project" /></a>
                    <a href="#"><img src="/resources/images/project2.jpg" alt="" title="" border="0" class="project" /></a> 
                    <a href="#"><img src="/resources/images/project3.jpg" alt="" title="" border="0" class="project" /></a> 
                    <a href="#"><img src="/resources/images/project2.jpg" alt="" title="" border="0" class="project" /></a> 
                    <a href="#"><img src="/resources/images/project1.jpg" alt="" title="" border="0" class="project" /></a> 
                    <a href="#"><img src="/resources/images/project3.jpg" alt="" title="" border="0" class="project" /></a>    
            
            </div>
            
            
            <div class="clear"></div>
    </div><!--End of main_content-->

    
</div><!--End of wrap-->

<div class="footer">
	<div class="footer_content">
    
    	<div class="left_footer_content">
        	<h2>Get in touch</h2>
            <p>
            Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut  Lorem ipsum dolor sit amet  <br />
            Email : <span class="brown">yourname@yoursite.com</span><br />
            <span class="brown">All Rights Reserved 2009 yoursite.com</span>            
            </p>
        
        </div>
    
        <div class="footer_links">
        	<h2>Friends</h2>
            <ul>
            <li><a href="#">Lorem ipsum dolor sit amet</a></li>
            <li><a href="#">Lorem ipsum dolor sit amet</a></li>
            <li><a href="#">Lorem ipsum dolor sit amet</a></li>
            <li><a href="#">Lorem ipsum dolor sit amet</a></li>
            <li><a href="#">Lorem ipsum dolor sit amet</a></li>
            </ul>
        </div>
        
        <div class="footer_network">
        	<h2>Network</h2>
        <a href="#" target="_blank"><img src="/resources/images/rss_48.gif" alt="" title="" border="0" /></a>
        <a href="#" target="_blank"><img src="/resources/images/digg_48.gif" alt="" title="" border="0" /></a>
        <a href="#" target="_blank"><img src="/resources/images/sumbleupon_48.gif" alt="" title="" border="0" /></a>
        <a href="#" target="_blank"><img src="/resources/images/reddit_48.gif" alt="" title="" border="0" /></a>
        <a href="#" target="_blank"><img src="/resources/images/technorati_48.gif" alt="" title="" border="0" /></a>
        <a href="#" target="_blank"><img src="/resources/images/delicious_48.gif" alt="" title="" border="0" /></a>
        <a href="#" target="_blank"><img src="/resources/images/twitter_boxed_48.gif" alt="" title="" border="0" /></a>
        
        
        <a href="http://csstemplatesmarket.com" target="_blank"><img src="/resources/images/csstemplatesmarket.gif" alt="" title="" border="0" class="csstemplatesmarket" /></a>        
        </div>
        
	</div>
</div><!--End of footer-->



</body>
</html>