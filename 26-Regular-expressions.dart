void main() {
  String email = "johndoe@gmail.com";

  // first we'll see why we need regular expressions
  // we want to check if the email is valid
  // we can do it like this:
  if (email.contains("@") && email.contains(".")) {
    print("Email is valid");
  } else {
    print("Email is not valid");
  }
  // what if the entered email is "@@@....", this will be considered as valid

  // to solve this problem we can use regular expressions
  // we can use the RegExp class to create a regular expression
  RegExp regExp = RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  // this is also valid regex : r"^[^\s@]+@[^\s@]+\.[^\s@]+$"

  // we can use the hasMatch() method to check if the string matches the regular expression
  print("Email is valid: ${regExp.hasMatch(email)}");
}
