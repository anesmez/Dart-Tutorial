/*
Important note : 
In dart we use setters and getters to access private properties
it's a language feature, private values are only accessible through getters and setters
that's why we don't use the same syntax as in Java or C++.
*/

class Rectangle {
  double? left,
      top,
      width,
      height; // right and left are the x-coordinates of the rectangle

  Rectangle(this.left, this.top, this.width, this.height);

  // Define two calculated properties: right and bottom.
  double get right =>left! + width!; // the ! is used to tell the compiler that the value is not null
  set right(double value) => left = value - width!;
  double get bottom => top! + height!;
  set bottom(double value) => top = value - height!;
}

void main() {
  var rect = Rectangle(3, 4, 20, 15);
  print(rect.left);
  rect.right = 12;
  print(rect.right);
}
