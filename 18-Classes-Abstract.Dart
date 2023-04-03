abstract class Vehicle { // a class that can't be instantiated
  // abstract methods
  void start();
  int f;
  Vehicle(this.f);
  void stop();

}

class Car extends Vehicle {
  Car(): super(1);
  void start(){
    print("Car started");
  }
  void stop(){
    print("Car stopped");
  }
}

class Bike implements Vehicle {
  void start(){
    print("Bike started");
  }
  void stop(){
    print("Bike stopped");
  }
}

// think about it, you can't have just a vehicule, it's either a car, bus, motorcyle ...etc

void main(){
  // var v = Vehicle(); // this will give an error
  var v = Car();
  v.start();
  v.stop();
}