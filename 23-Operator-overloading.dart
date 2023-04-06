class Point {
  int? x, y, z;
  Point(
      [this.x = 0, this.y = 0, this.z = 0]); // constructor with default values

  // operator overloading
  Point operator +(Point p) {
    return Point(this.x! + p.x!, this.y! + p.y!, this.z! + p.z!);
  }

  // we can also use the @override annotation
  @override
  bool operator == (Object other) {
    if (identical(this, other)) return true;

    return other is Point && other.x == x && other.y == y && other.z == z;
  }
  

  // toString() method override
  @override
  String toString() {
    return "x: $x, y: $y, z: $z";
  }
}

void main() {
  var p1 = Point(1, 2, 3);
  var p2 = Point(12, -2, 5);

  var p3 = p1 + p2; // this is the operator overloading
  print(p3.toString());

  var p4 = Point(1, 2, 3);
  print(p1 == p4);
}
