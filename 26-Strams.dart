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

  stream.listen((event) {
    print(event);
  });
}
