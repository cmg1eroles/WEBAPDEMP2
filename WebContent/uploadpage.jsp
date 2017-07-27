<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Instaliter | Upload</title>
<link rel="stylesheet" type="text/css" href="style.css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<div id="header">
		<a href="homepage.jsp"><button id="btn-name">Instaliter</button></a>
		<a href="loginreg.html" class="signing">SIGN IN</a>
		<a href="logout" class="signing">SIGN OUT</a>
		<span id="username">${sessionScope.un}</span>
	</div>
	
	<div id="upload-container">
		<div id="upload-icon">
			<img src="resources/icons/upload.png">
		</div>
		<hr>
		<form id="details">
			<input type="file" name="image">
			<br><br>
			Title: <input type="text" name="title">
			<br><br>
			Description: <input type="text" name="desc" id="descr">
			<br><br>
			Tags: <input type="text" name="tag">
			<br><br>
			<button class="choose">Post as public photo</button>
			<button class="choose">Post as private photo</button>
		</form>
	</div>
</body>
</html>