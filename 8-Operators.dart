void main() {
  int num = 10 + 22;
  num = num - 2;
  print(num);

  num = num % 5;
  print(num);

  // relational ==, !=, >, <, >=, <=
  if(num == 0){
    print("num is equal to zero");
  }

  num = 100;
  num *= 2;
  print(num);

  // unary operators
  num++;
  print(num);
  ++num;
  print(num);
  num += 1;
  print(num);
  num -= 1;
  print(num);

  // logical operators
  if(num > 200 && num < 300){
    print("num is between 200 and 300");
  }

  // != Not equal 
  if(num != 100){
    print("num is not equal to 200");
  }

  // Null aware operator  (?.), (??), (??=) check the null.dart file

  // Ternary operator
  int x = 100;
  var result = x % 2 == 0 ? "Even" : "Odd";
  print(result); 

  // Type test operator
  var y = 100;
  if(y is int){
    print("y is an int");
  }

  // conditional statement
  if(y % 2 == 0){
    print("y is even");
  }
  else if(y % 3 == 0){
    print("y is divisible by 3");
  }
  else{
    print("y is neither even nor divisible by 3");
  }

  // switch statement
  var command = "CLOSED";
  switch(command){
    case "CLOSED":
      print("CLOSED");
      break;
    case "PENDING":
      print("PENDING");
      break;
    case "APPROVED":
      print("APPROVED");
      break;
    case "DENIED":
      print("DENIED");
      break;
    case "OPEN":
      print("OPEN");
      break;
    default:
      print("UNKNOWN");
  }
}
