void main() {

  // assert is used for debugging

  // String -> int
  var one = int.parse('20');
  assert(one ==1); // (it's like if(one != 1){exit();}) assert is a debug-time only statement (can be disabled by running the program in production mode)

  // String -> double
  var onePointOne = double.parse('1.1');
  assert(onePointOne == 1.1);

  // int -> String
  String oneAsString = 1.toString(); // transforms the int into a string
  assert(oneAsString == '1');

  // double -> String
  String piAsString = 3.14159.toStringAsFixed(2); // transforms the double into a string with 2 decimals
  assert(piAsString == '3.14');
}
