import 'dart:async';

StreamController<dynamic> controller = StreamController<dynamic>.broadcast();

Stream stream = controller.stream;

void main() {
  var streamSubscription = stream.listen((event) {
    print("Stream 1: $event");
  });

  var streamSubscription2 = stream.listen((event) {
    print("Stream 2: $event");
  });

  controller.sink.add("Hello");
  controller.sink.add("World");
  controller.sink.add("Hello !");
  controller.sink.add("World !");
}

