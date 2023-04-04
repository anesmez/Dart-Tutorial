//Extensions in dart allow us to add new functionality to an existing class without modifying the original class.

extension StringExtension on String {
  // capitalize the first letter of a string
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}

extension IntExtension on int {
  // add two numbers
  int add(int num) {
    return this + num;
  }
}

void main() {
  String name = "john";
  print(name.capitalize());
  int num = 10;
  print(num.add(5));
}
