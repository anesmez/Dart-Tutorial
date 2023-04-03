class Person {
  String? name;
  int? age;

  // Person(String name, [int age = 18]) {
  //   print("Constructor called");
  //   this.name = name;
  //   this.age = age;
  // }

  Person(this.name, [this.age = 18]) { // this is a shortcut for the above constructor
    print("Constructor called");
  }

  // named constructor
  Person.guest() { // "customized" constructor
    name = "Guest";
    age = 18;
  }
    

  void sayHello() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

void main() {
  // var person = Person();
  // person.sayHello(); // it prints null
  // person.age = 30;
  // person.name = "John";
  // person.sayHello(); // it prints "Hello, my name is John and I am 30 years old."

  var person = Person("John");
  person.sayHello(); // it prints "Hello, my name is John and I am 18 years old."

  var person2 = Person("Jane", 25);
  person2.sayHello(); 

}
