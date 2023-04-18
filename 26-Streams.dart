// Streams are asynchronous and can be used to handle large amounts of data.

import 'dart:async';

void main() {
  final streamController = StreamController<int>();
  // by instantiating a StreamController we can create a stream
  //(streamcontroller is an object that allows us to add events to the stream and listen to the stream)
  final stream = streamController.stream;

  for (int i = 0; i < 10; i++) {
    streamController.add(i);
  }

  // print("Just Listen : ");
  // stream.listen((event) {
  //   // listen() is used to subscribe to a stream and recieve data events as they occur and takes a callback function as an argument
  //   print(event);
  // });

  print("\nListen + where() : ");
  stream.where((data) => data % 2 == 0).listen((data) {
    // where() is used to filter the data in the stream
    print(data);
  });

  // print("\nListen + map() : ");
  // stream.map((data) => data * 2).listen((data) {
  //   // map() is used to transform the data in the stream
  //   print(data);
  // });

  // print("\nListen + reduce() : ");
  // stream.reduce((acc, data) => acc + data).then((result) {
  //   print(result);
  // });

  streamController.close(); // close() is used to close the stream
}
