import 'dart:io';

void main() {

  stdout.write("what is your name ? : "); //stdout.write() doesn't print a newline character
  String? name = stdin.readLineSync();
  print("My name is $name");
}
