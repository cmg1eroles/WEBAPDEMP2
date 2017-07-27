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
<script src="loadphotos.js"></script>
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
    </div>  
        
    <div id="more">
    	<div id="moreimg">
    		<img  src="resources/icons/angle-arrow-down.png" >
    	</div>
    </div>
    
    <script>
    	const BY = 15;
    	var lastpic;
    	
    	function addPic(num) {
    		var d = document.createElement("div");
    		var img = document.createElement("img");
    		
    		$(d).addClass("thumbnail");
    		
    		$(d).attr("data-photoId", num);
    		$(img).attr("src", publicphotos[num].src);
    		
    		$(d).append(img);
    		$("#container").append(d);
    	}
    	
    	function loadNext(by) {
    		var i;
    		for (i = lastpic ; i >= lastpic-(by-1) && i >= 0 ; i--) {
                addPic(i);
                if (i == 0) {
                    lastpic = -1;
                    $("#more").hide();
                    break;
                }
            }
            lastpic = i;
    	}
    	
    	$(document).ready(function() {
    		$.when(loadPublicPhotos()).done(function() {
    			lastpic = publicphotos.length-1;
    			
    			loadNext(BY);
	            
	    		$("#more").click(function() {
	    			loadNext(BY);
	    		});
    		});
    	});
    </script>
</body>
</html>