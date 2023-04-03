class Vehicule {
  String? model;
  int? year;

  Vehicule(this.model, this.year) {
    print(this.model);
    print(this.year);
  }

  void showOutput() {
    print(this.model);
    print(this.year);
  }
}

class Car extends Vehicule {
  double price = 0;

  Car(String model, int year, this.price) : super(model, year); // super is used to call the parent constructor

  void showOutput() {
    super.showOutput(); // super is used to call the parent method
    print(this.price);
  }
}

void main(){
  var car1 = Car("BMW", 2015, 10000);
  car1.showOutput();
}
