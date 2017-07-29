<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Instaliter | User Profile</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<script src="jquery-3.2.1.js"></script>
<script src="header.js"></script>
<script src="loadphotos.js"></script>
<script src="loadusers.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body>

	<div id="header">
		<a href="homepage.jsp"><button class="clickable" id="btn-name">Instaliter</button></a>
		<a href="loginreg.jsp" id="signin" class="signing">SIGN IN</a>
		<a href="logout" id="signout" class="signing">SIGN OUT</a>
		<span id="username">${sessionScope.un}</span>
	</div>
	<div class="below-header">
		<img src="resources/icons/profile.png" id="dp">
		<hr id="fhr">
		<div id="name-container">
			<span id="profile-name">${uname}</span>
			<!--  <span id="profile-username">(TestUserName)</span> -->
		</div>
	</div>
	
	<div id="divider">
		<hr>
			<div id="desc">
				Description
			</div>
		<hr>
	</div>
	
	<div class="photos-container"></div>
	
	<div id="morepics">
    	<div id="moreimg">
    		<img  src="resources/icons/angle-arrow-down.png" >
    	</div>
    </div>
    
	<script>
		const BY = 5;
		var pics = [];
		var uname, profile;
    	var lastpic;
    	
    	function loadPics() {
    		for (var i = 0 ; i < publicphotos.length ; i++) {
    			var p = publicphotos[i];
    			if (p.user == profile)
    				pics.push(p);
    		}
    		
    		for (var i = 0 ; i < privatephotos.length ; i++) {
    			var p = privatephotos[i];
    			var allowed = p.allowed
    			if (p.user == profile && ($.inArray(uname, allowed) >= 0 || p.user == uname))
    				pics.push(p);
    		}
    	}
		
    	function addPic(num) {
    		var d = document.createElement("div");
    		var img = document.createElement("img");
    		
    		$(d).addClass("thumbnail");
    		$(d).addClass("clickable");
    		
    		$(d).attr("data-photoId", num);
    		$(img).attr("src", pics[num].src);
    		
    		$(d).append(img);
    		$(".photos-container").append(d);
    	}
    	
    	function loadNext(by) {
    		var i;
    		for (i = lastpic ; i >= lastpic-(by-1) && i >= 0 ; i--)
                addPic(i);
            lastpic = i;
    	}
    	
		$(document).ready(function() {
			
			uname = $("#username").html();
			profile = $("#profile-name").html();
			
			$.when(loadPublicPhotos(), loadPrivatePhotos(), loadUsers()).done(function() {
				for (var i = 0 ; i < users.length ; i++) {
					if (users[i].username == profile) {
						$("#desc").text(users[i].description);
						break;
					}
				}
				
				$.when(loadPics()).done(function() {
					if (pics.length == 0)
						$("#morepics").hide();
						
					lastpic = pics.length-1;
					
					loadNext(BY);
					
					$("#morepics").click(function() {
	    				loadNext(BY);
	    				if (lastpic = -1)
	    					$("#morepics").hide();
		    		});
				});
			});
			
		});
	</script>
</body>
</html>