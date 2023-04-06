void main() {
  showOutput(square(2));
  showOutput(square(2.5));
  print(square.runtimeType);

  // arrow functions
  showOutput(square2(2));

  // anonymous functions
  var list = ['apples', 'bananas', 'oranges'];
  list.forEach((item){
    print('${list.indexOf(item)}: $item');
  });

  // named parameters
  enableFlags(bold: true, hidden: false);
  // they're also optional if not used in the function
  print("Sum(10) = ${sum(10)}");
  print("Sum(10, 20) = ${sum(10, num2: 20)}");

  // positional parameters that can be optional
  print("Sum2(10) = ${sum2(10)}");
}

dynamic square(var x) {
  return x * x;
}

dynamic square2(var x) => x * x;

void showOutput(var msg) {
  print(msg);
}

void enableFlags({bool? bold, bool? hidden}) { // named parameters between {}
  print(bold);
  print(hidden);
}

// dynamic sum(var num1, {var num2}) => num1 + num2;
// dynamic sum(var num1, {var num2}) => num1 + (num2 ??=0);
dynamic sum(var num1, {var num2 = 0}) => num1 + num2; // named parameters between {}, optional

dynamic sum2(var num1, [var num2 = 0]) => num1 + num2; // positional parameters between [], optional

