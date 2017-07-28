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
	
	<script>
		$(document).ready(function() {
			var uname = $("#profile-name").html();
			console.log(uname);
			$.when(loadPublicPhotos(), loadPrivatePhotos(), loadUsers()).done(function() {
				for (var i = 0 ; i < users.length ; i++) {
					if (users[i].username == uname) {
						$("#desc").text(users[i].description);
						break;
					}
				}
			});
		});
	</script>
</body>
</html>