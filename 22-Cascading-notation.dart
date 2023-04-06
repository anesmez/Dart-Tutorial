class User {
  String? firstName;
  String? lastName;
  String? email;
  int? phone;

  void sayHello() {
    print("Hello, my name is $firstName $lastName and my email is $email and my phone number is $phone.");
  }


}

void main() {
  var user = User()
    ..firstName = "John"
    ..lastName = "Doe"
    ..email = "email"
    ..phone = 1234567890;
  user.sayHello();
}