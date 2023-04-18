// mixins allow us to add functionality to a class without having to inherit from it or use multiple inheritance.
// mixins are used in animations, we also use them to add functionality to widgets.
class Animal {
  void eat() {
    print('Animal is eating.');
  }
}

class Mammal extends Animal {
  void move() {
    print('Mammal is moving.');
  }
}

class Bird extends Animal {
  void fly() {
    print('Bird is flying.');
  }
}

mixin Breathe on Bird {
  void breathe() {
    print('Mixin is breathing.');
  }
}

mixin Flying {
  void fly() {
    print('Mixin is flying.');
  }
}

class Bat extends Mammal with Flying {
  // Bat has the fly method from Flying mixin
}

void main() {
  var bat = Bat();
  bat.move();
  bat.fly();
  bat.eat();
}


/*
mixing came to solve the problem of multiple inheritance in Dart. this is the same code without mixin:

class Animal {
  void eat() {
    print('Animal is eating.');
  }
}

class Mammal extends Animal {
  void move() {
    print('Mammal is moving.');
  }
}

class Bird extends Animal {
  void fly() {
    print('Bird is flying.');
  }
}

class Bat extends Mammal {
  void fly() {
    print('Bat is flying.');
  }
}

void main() {
  var bat = Bat();
  bat.move();
  bat.fly();
  bat.eat();
}


*/
