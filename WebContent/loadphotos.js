Photo = function(user, src, desc, tags, privacy, allowed) {
	this.user = user;
	this.src = src;
	this.desc = desc;
	this.tags = tags;
	this.privacy = privacy;
	this.allowed = allowed;
}

const url = "resources/imgs/"
var publicphotos = [];
var privatephotos = [];

function loadPublicPhotos() {
	for (var i = 1 ; i <= 15 ; i++) {
		var t = [];
		t.push("batman");
		var p = new Photo("cmg1eroles", url + "public/batman" + i + ".jpg", "blah blah blah blah", t, false, null);
		publicphotos.push(p);
	}

	for (var i = 1 ; i <= 15 ; i++) {
		var t = [];
		t.push("girl");
		var p = new Photo("jjmojica", url + "public/girl" + i + ".jpg", "blah blah blah blah", t, false, null);
		publicphotos.push(p);
	}
}

function loadPrivatePhotos() {
	for (var i = 1 ; i <= 15 ; i++) {
		var t = [];
		t.push("dog");
		var a = [];
		a.push("cmg1eroles");
		var p = new Photo("michaelrespicio", url + "private/dogs" + i + ".jpg", "blah blah blah blah", t, true, a);
		privatephotos.push(p);
	}
}