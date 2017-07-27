<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
<title>Instaliter | Photos</title>
<link href="style.css" rel="stylesheet" />
<script src="jquery-3.2.1.js"></script>
<script src="header.js"></script>
</head>
<body>
	<div id="header">
		<a href="loginreg.html" id="signin" class="signing">SIGN IN</a>
		<a href="logout" id="signout" class="signing">SIGN OUT</a>
		<span id="username">${sessionScope.un}</span>
	
		<div style="float:right">
			<form style="float:right" method="POST">
			<input id="hanap" type="text">
			<input type="submit" id="search-button" value="">
			</form>
		</div>
	</div>
	
	<div id="menu"> 
		<div id="innermenu">
			<span class="menubtn">
			Public Photos
			</span>
			<span class="menubtn">
			Shared Photos
			</span>
		</div> 
	</div>
	
	<div id="container">
    	<div class="thumbnail"><img src="resources/imgs/public/batman1.jpg"></div>
    	<div class="thumbnail"><img src="resources/imgs/public/batman2.jpg"></div>
    	<div class="thumbnail"><img src="resources/imgs/public/batman3.jpg"></div>
    	<div class="thumbnail"><img src="resources/imgs/public/batman4.jpg"></div>
    	<div class="thumbnail"><img src="resources/imgs/public/batman5.jpg"></div>
    	<div class="thumbnail"><img src="resources/imgs/public/girl1.jpg"></div>
    	<div class="thumbnail"><img src="resources/imgs/public/girl2.jpg"></div>
    	<div class="thumbnail"><img src="resources/imgs/public/girl3.jpg"></div>
    	<div class="thumbnail"><img src="resources/imgs/public/girl4.jpg"></div>
    	<div class="thumbnail"><img src="resources/imgs/public/girl5.jpg"></div>
    </div>  
        
    <div id="more">
    	<div id="moreimg">
    		<img  src="resources/icons/angle-arrow-down.png" >
    	</div>
    </div>
</body>
</html>