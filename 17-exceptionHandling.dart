/*
for a safe execution of a program, we can use try-catch-finally
try: the code that might throw an exception (an isolated block of code)
catch: the code that will be executed if an exception is thrown (it will catch the exception)
finally: the code that will be executed whether an exception is thrown or not
*/


int mustGreaterThanZero(int val) {
  if (val <= 0) {
    throw Exception('Value must be greater than zero');
  }
  return val;
}

void letVerifyTheValue(var val) {
  var valueVerification;

  // if we don't catch the exception, the program will crash
  try { 
    valueVerification = mustGreaterThanZero(val);
  }
  catch (e) {
    print(e); // print the exception we defined in the function
  }
  finally {
    if (valueVerification == null) {
      print('Value is not accepted');
    }
    else {
      print('Value verified: $valueVerification');
    }
  }
}

void main() {
  letVerifyTheValue(10);
  letVerifyTheValue(0);
}
