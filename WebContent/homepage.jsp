<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Instaliter | Photos</title>
<link href="style.css" rel="stylesheet" />
</head>
<body>
	<div id="header">
		
		
		<a href="loginreg.html" class="signing">SIGN IN</a>
		<a href="logout" class="signing">SIGN OUT</a>
		<span id="username">${sessionScope.un}</span>
		<!-- <span id="searchbtn"><img src="resources/icons/magnifying-glass.png">
			</span>
			
		<div id="searchmid">
			<form id="search" >
				<input type="text" name="search" placeholder="Search tags, photos">			
			</form>
		</div>
	</div> -->
	
		<div style="float:right">
			<div id="highlight"></div>
			<form style="float:right">
			<input id="hanap" type="text">
			</form>
			
			<button id="search-button"></button>
		</div>
	</div>
	
	<div id="menu"> 
		<div id="innermenu">
			<span>
			Public
			</span>
			<span>
			Private
			</span>
		</div> 
	</div>
	
	<div id="container">
    	
    </div>  
        
    <div id="more">
    	<div id="moreimg">
    		<img  src="resources/icons/angle-arrow-down.png" >
    	</div>
    </div>
    <!--  <input type="file"> -->
</body>
</html>