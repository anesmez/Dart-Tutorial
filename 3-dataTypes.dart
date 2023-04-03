/*
Strongly typed Language: The type of a variable is known at compile time.
example : C++,Java,Swift

Dynamic typed Language: The type of a variable is known at run time.
example : Python, Ruby, Javascript
*/

void main() {
  /*
  int 
  double
  String
  bool
  dynamic
  */

  int amount1 = 100;
  var amount2 = 200;

  print("Amount 1: $amount1 | Amount 2: $amount2\n");

  double dAmount1 = 100.11;
  var dAmount2 = 200.22;

  print("dAmount 1: $dAmount1 | dAmount 2: $dAmount2\n");

  String name1 = "John";
  var name2 = "Doe";

  print("My name is $name1 $name2\n");

  bool isTrue1 = true;
  var isTrue2 = false;

  print('isTrue1: $isTrue1 | isTrue2: $isTrue2 \n');

  dynamic weakVariable = 100;
  print('WeakVariable 1 : $weakVariable \n');

  weakVariable = 'Dart Programming';
  print('WeakVariable 2 : $weakVariable \n'); // anes

  weakVariable = null;
  print(weakVariable);


  /*
  it's recommended to avoid using dynamic type unless necessary,
  because it will disable all the static type checking,
  and it will be hard to find bugs at compile time.
  */
}
