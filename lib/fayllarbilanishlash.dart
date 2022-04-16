

class User {
  // feilds
  late String firstName;
  late String lastName;
  late String email;
  late String password;

  User(this.firstName, this.lastName, this.email, this.password);

  // fromJson

  User.fromJson(Map<String, dynamic> json) {
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> map = {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
    };
    return map;
  }


  @override
  String toString() {
    return 'Firstname : $firstName. LastName : $lastName. Email : $email. Password : $password\n';
  }

}
