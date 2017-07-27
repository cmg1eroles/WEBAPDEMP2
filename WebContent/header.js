$(document).ready(function() {
	$(".signing").hide();
	
	var uname = $("#username").html();
	if (uname != "")
		$("#signout").show();
	else $("#signin").show();
});
