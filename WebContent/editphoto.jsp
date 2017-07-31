<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<script src="jquery-3.2.1.js"></script>
<script src="loadphotos.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Instaliter | Edit</title>
</head>
<body>
	<div id="header">
		<a href="homepage.jsp"><button class="clickable" id="btn-name">Instaliter</button></a>
		<a href="logout" id="signout" class="signing">SIGN OUT</a>
		<span id="username" class="clickable">${sessionScope.un}</span>
	</div>

	<div id="edit-success" class="success">${msg}</div>

	<div id="edit-container">
		<div id="edit-icon">
			<img id="edit-img" src="resources/icons/edit.png">
		</div>
		<hr>
		<form action="uploadphoto" id="details" method="POST">
		<div class="form-div">
			<br><br>
			Title: <input type="text" name="title" id="title">
			<br><br>
			Description: <input type="text" name="desc" id="descr">
			<br><br>
			Tags: <input type="text" name="tag" id="tags">
			<br><br>
			Share with: <input type="text" name="share" id="share">
			<br><br>
			<input type="submit" name="edit" id="edit-btn" value="Apply Changes">
		</div>	
		</form>
	</div>
	
	<script>
		var uname;
		var photoId = ${photoId}
		
		$(document).ready(function() {
			uname = $("#username").html();
			$("#signout").show();
			
			$.when(loadPublicPhotos(), loadPrivatePhotos()).done(function() {
				var photo = null;
				for (var i = 0 ; i < publicphotos.length ; i++) {
					if (publicphotos[i].id == photoId) {
						photo = publicphotos[i];
						break;
					}
				}
				
				if (photo == null) {
					for (var i = 0 ; i < privatephotos.length ; i++) {
						if (privatephotos[i].id == photoId) {
							photo = privatephotos[i];
							break;
						}
					}
				}
				
				$("#edit-img").attr("src", photo.src);
				$("#edit-img").attr("width", "256px");
				$("#edit-img").attr("height", "256px");
				
				$("#title").attr("value", photo.title);
				$("#descr").attr("value", photo.desc);
				$("#tags").attr("value", photo.tags);
				$("#share").attr("value", photo.allowed);
				
			});
			
			$("#username").click(function() {
				window.location = "profile?u=" + uname;
			});
		});
	</script>
</body>
</html>