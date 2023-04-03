void main() {
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1);
  print(s2);
  print(s3);
  print(s4);
  print('');

  // RAW String
  var s = r'In a raw string, not even \n gets special treatment.';
  print(s);

  var age = 35;
  var str = 'My age is : $age';
  print(str + "\n\n");

  // Multi-line string in dart
  var s5 = '''
  You can create 
  multi-line strings like this one
  ''';

  var s6 = """This is aso a
  multi-line string.
  """;

  print(s5);
  print(s6);

  print("-------String Primitive Operations-------");
  var string = 'String Example';
  print(string.codeUnits); // print the unicode of each character
  print(string.length);
  print(string.isEmpty); // boolean value
  print(string.isNotEmpty); // boolean value
  print(string.contains('Example')); // boolean value
  print(string.startsWith('String')); // boolean value
  print(string.endsWith('Example')); // boolean value
  print(string.indexOf('Example')); // return the index of the first occurence of the string
  print(string.lastIndexOf('Example')); // return the index of the last occurence of the string
  print(string.substring(0, 6)); // return the substring from index 0 to 6
  print(string.toLowerCase()); // return the string in lower case
  print(string.toUpperCase()); // return the string in upper case
  print(string.trim()); // remove the white spaces from the beginning and the end of the string
  print(string.split(' ')); // split the string into a list of strings
  print(string.replaceAll('Example', 'Example2')); // replace all the occurences of the string
  print(string.replaceFirst('Example', 'Example2')); // replace the first occurence of the string
}
