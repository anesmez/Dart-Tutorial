// enums tutorial

enum Color { red, green, blue }

enum days { Sunday, Monday, Tuesday, Wednesday, Thrusday, Friday, Saturday }

enum Gender { Male, Female }

void main() {
  // Declare enum variable
  Color c = Color.red; // the name of the enum is Color and the value is red
  print(c);
  // if we want to display red only we can use the following code
  print(c.toString().split(".")[1]);
  // print(c.toString().split(".").last); // this works too
  

  //use it in switch case
  var today = days.Friday;
  switch (today) {
    case days.Sunday:
      print("Today is Sunday.");
      break;
    case days.Monday:
      print("Today is Monday.");
      break;
    case days.Tuesday:
      print("Today is Tuesday.");
      break;
    case days.Wednesday:
      print("Today is Wednesday.");
      break;
    case days.Thrusday:
      print("Today is Thursday.");
      break;
    case days.Friday:
      print("Today is Friday.");
      break;
    case days.Saturday:
      print("Today is Saturday.");
      break;
  }

  // use it in classes
  Person John = Person("John", "Doe", Gender.Male);
  John.display();

  Person Alicia = Person("Alicia", "Kong", Gender.Female);
  Alicia.display();
}

// in classes :

class Person {
  // Attributes
  String? firstName;
  String? lastName;
  Gender? gender;

  // Constructor
  Person(this.firstName, this.lastName, this.gender);

  // display() method
  void display() {
    print("First Name: $firstName");
    print("Last Name: $lastName");
    print("Gender: $gender");
  }
}
