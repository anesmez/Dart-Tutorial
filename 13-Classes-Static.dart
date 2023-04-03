class X {
  final name; // final means that the value is changed one time only
  static const int age = 18; // static means that the value is shared by all instances of the class 
  
  X(this.name);
}

void main(){
  var x = X("John");
  print(x.name);

  // x.name = "Jane"; this will throw an error because name is final
  print(X.age);

  var x2 = X("Jane");
  print(X.age); // this will print 18 because age is static


}