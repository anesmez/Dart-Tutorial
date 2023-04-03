class X {
  String? name;

  X(this.name);

  void showOutput() {
    print(this.name);
  }

  dynamic square(dynamic val) {
    return val * val;
  }
}

class Y extends X {
  Y(String name) : super(name);

  @override // it's optional but safer to use it (use it when you don't have control over the parent class)
  void showOutput() {
    print(this.name);
    print("This is Y");
  }
}
