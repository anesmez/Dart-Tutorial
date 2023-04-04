class StringPrint {
  String value;
  StringPrint(this.value);
  void printString() {
    print("Value : $value");
  }
}

class IntPrint {
  int value;
  IntPrint(this.value);
  void printInt() {
    print("Value : $value");
  }
}

// There is an easier way to do this using generics :

class Print<T> {
  // we use generics for a reusable code
  T value;
  Print(this.value);
  void printValue() {
    print("Value : $value");
  }
}

void main() {
  Print<String> stringPrint = Print("Hello");
  stringPrint.printValue();
  Print<int> intPrint = Print(10);
  intPrint.printValue();
}
