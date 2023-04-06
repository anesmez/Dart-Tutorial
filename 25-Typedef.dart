// We will first see the problem with the function and then we will see the solution with the typedef.

// class Calc {
//   int? a, b;
//   Function? op;

//   Calc(this.a, this.b, this.op) {
//     op!(this.a, this.b);
//   }
// }

// int add(int? a, int? b) {
//   print("Result: ${a! + b!}");
//   return a + b;
// }

// Wrongadd(String a, b, c){
//   print("Result: ${a + b}");
// }



// void main() {
//   var c = Calc(10, 20, add); // this works normally 
//   var c2 = Calc(10, 20, Wrongadd); // this throws an error because the function has the wrong signature
// }

// to solve this problem we can use typedefs

// typedef CalcFunc = int Function(int, int); // this is a typedef
typedef int CalcFunc(int a, int b); // this is a typedef too

class Calc {
  int? a, b;
  CalcFunc? op;

  Calc(this.a, this.b, this.op) {
    op!(this.a!, this.b!);
  }
}

int add(int a, int b) {
  print("Result: ${a + b}");
  return a + b;
}

Wrongadd(String a, b, c){
  print("Result: ${a + b}");
}

void main() {
  var c = Calc(10, 20, add); // this works normally 
  // var c2 = Calc(10, 20, Wrongadd); // this shows an error because the function has the wrong signature
}