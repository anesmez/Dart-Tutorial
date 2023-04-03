void main() {
  const aConstNum = 0; // const is a compile-time constant
  const aConstBool = true; // bool constant
  const aConstString = 'a constant string'; // string constant

  print(aConstNum);
  print(aConstBool);
  print(aConstString);
  print("--------------------");
  print(aConstNum.runtimeType);
  print(aConstBool.runtimeType);
  print(aConstString.runtimeType);
}
