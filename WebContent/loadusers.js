User = function(id, username, password, description) {
	this.id = id;
	this.username = username;
	this.password = password;
	this.description = description;
}

var users = [];

function loadUsers() {
	users.push(new User(1, "cmg1eroles", "batman", "I'm Batman"));
	users.push(new User(2, "michaelrespicio", "1", "something lol"));
	users.push(new User(3, "jjmojica", "jsquared", "my description here"));
}