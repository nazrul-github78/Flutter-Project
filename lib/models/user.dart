class User {
  String fullname;
  String username;
  String email;
  String password;
  String flaglogged;



  User(this.fullname, this.username, this.email, this.password, this.flaglogged);

  User.map(dynamic obj) {
    this.fullname = obj['name'];
    this.username = obj['username'];
    this.email = obj['email'];
    this.password = obj['password'];
    this.flaglogged = obj['password'];
  }

  // String get name => _fullname;
  // String get username => _username;
  // String get email => _email;
  // String get password => _password;

  Map<String, dynamic> toMap() {
    var map = new Map<String, dynamic>();
    map["name"] = fullname;
    map["username"] = username;
    map["email"] = email;
    map["password"] = password;
    map["flaglogged"] = password;
    return map;
  }
}