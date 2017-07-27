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
        <div id="homepage-header">
            <div id="name"> Instaliter </div>
        </div>
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
			<span id="publicbtn" class="menubtn">
			Public Photos
			</span>
			<span id="sharedbtn" class="menubtn">
			Shared Photos
			</span>
		</div> 
	</div>
	
	<div id="public-container" class="container">
    </div>  
    
    <div id="private-container" class="container">
    </div>
        
    <div id="more">
    	<div id="moreimg">
    		<img  src="resources/icons/angle-arrow-down.png" >
    	</div>
    </div>
    
    <script>
    	const BY = 15;
    	var sharedpics = [];
    	var uname, mode;
    	var lastpic, lastshared;
    	
    	function loadShared() {
    		for (var i = 0 ; i < privatephotos.length ; i++) {
    			var p = privatephotos[i];
    			var allowed = p.allowed;
    			if ($.inArray(uname, allowed) >= 0) 
    				sharedpics.push(p);
    		}
    	}
    	
    	function addPic(num) {
    		var d = document.createElement("div");
    		var img = document.createElement("img");
    		
    		$(d).addClass("thumbnail");
    		
    		$(d).attr("data-photoId", num);
    		$(img).attr("src", publicphotos[num].src);
    		
    		$(d).append(img);
    		$("#public-container").append(d);
    	}
    	
    	function addPrivate(num) {
    		var d = document.createElement("div");
    		var img = document.createElement("img");
    		
    		$(d).addClass("thumbnail");
    		
    		$(d).attr("data-photoId", num);
    		$(img).attr("src", sharedpics[num].src);
    		
    		$(d).append(img);
    		$("#private-container").append(d);	
    	}
    	
    	function loadNext(by) {
    		var i;
    		for (i = lastpic ; i >= lastpic-(by-1) && i >= 0 ; i--)
                addPic(i);
            lastpic = i;
    	}
    	
    	function loadPrivate(by) {
    		var i;
    		for (i = lastshared ; i >= lastshared-(by-1) && i >= 0 ; i--)
                addPrivate(i);
            lastshared = i;
    	}
    	
    	$(document).ready(function() {
    		uname = $("#username").html();
    		$("#private-container").hide();
    		$("#public-container").show();
    		mode = "public";
    	
    		$.when(loadPublicPhotos(), loadPrivatePhotos()).done(function() {
    			$.when(loadShared()).done(function() {
    				
    				lastpic = publicphotos.length-1;
	    			lastshared = sharedpics.length-1;
	    			
	    			loadNext(BY);
	    			loadPrivate(BY);
		            
		    		$("#more").click(function() {
		    			if (mode == "public") {
		    				loadNext(BY);
		    				if (lastpic = -1)
		    					$("#more").hide();
		    			} else if (mode == "shared") {
		    				loadPrivate(BY);
		    				if (lastshared == -1)
		    					$("#more").hide();
		    			}
		    		});
    			});
    		});
    		
    		$("#publicbtn").click(function() {
    			$("#private-container").hide();
    			$("#public-container").show();
    			if (lastpic == -1)
    				$("#more").hide();
    			else $("#more").show();
    			mode = "public";
    		});
    		
    		$("#sharedbtn").click(function() {
    			$("#public-container").hide();
    			$("#private-container").show();
    			if (lastshared == -1)
    				$("#more").hide();
    			else $("#more").show();
    			mode = "shared";
    		});
    	});
    </script>
</body>
</html>