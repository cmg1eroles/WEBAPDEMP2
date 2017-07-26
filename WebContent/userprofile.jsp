<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Instaliter | User Profile</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<body>

<div id="header">
	<a href="loginreg.html" class="signing">SIGN IN</a>
	<a href="logout" class="signing">SIGN OUT</a>
	<span id="username">${sessionScope.un}</span>
</div>
<div class="below-header">
	<img src="resources/icons/profile.png" id="dp">
	<hr id="fhr">
	<div id="name-container">
		<span id="profile-name">TestName</span>
		<span id="profile-username">(TestUserName)</span>
	</div>
</div>

<div id="divider">
	<hr>
		<button class="btn">PUBLIC PHOTOS</button>
		<button class="btn">PRIVATE PHOTOS</button>
	<hr>
</div>

<div class="photos-container"></div>
</body>
</html>