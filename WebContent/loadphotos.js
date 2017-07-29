Photo = function(id, user, src, title, desc, tags, privacy, allowed) {
	this.id = id;
	this.user = user;
	this.src = src;
	this.title = title;
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
		var p = new Photo(i, "cmg1eroles", url + "public/batman" + i + ".jpg", "Batman" + i, "blah blah blah blah", t, false, null);
		publicphotos.push(p);
	}

	for (var i = 1 ; i <= 15 ; i++) {
		var t = [];
		t.push("girl");
		var p = new Photo(i+15, "jjmojica", url + "public/girl" + i + ".jpg", "Girl" + i, "blah blah blah blah", t, false, null);
		publicphotos.push(p);
	}
}

function loadPrivatePhotos() {
	for (var i = 1 ; i <= 15 ; i++) {
		var t = [];
		t.push("dog");
		var a = [];
		a.push("cmg1eroles");
		var p = new Photo(i+30, "michaelrespicio", url + "private/dogs" + i + ".jpg", "Dog" + i, "blah blah blah blah", t, true, a);
		privatephotos.push(p);
	}
}