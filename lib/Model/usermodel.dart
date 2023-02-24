class UserModel {
  String? uid;
  String? email;
  String? Name;
  String? role;

  UserModel({this.uid, this.email, this.Name, this.role});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        Name: map['firstName'],
        role: map['role']);
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'Name': Name,
      'role': role,
    };
  }
}
