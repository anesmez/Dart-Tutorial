/*
To vizualize the importance of asynchronous programming, imagine that you send and email on gmail and everything just freezes until the operation is completed.
This is not the case with asynchronous programming. The program continues to run while the email is being sent. 
This is because the email is sent in the background and the program continues to run. This is the same with asynchronous programming in dart. 
The program continues to run while the operation is being performed in the background.
*/
void main() async {
  print("First Operation");
  // await Future.delayed(Duration(seconds: 3), () {
  //   print("Second Operation");
  // });
  var userOrder = await fetchUserOrder();
  print(userOrder);
  print("Third Operation");
}

Future<String> fetchUserOrder() async {
  return await Future.delayed(Duration(seconds: 3), () => "Large Latte");
}
