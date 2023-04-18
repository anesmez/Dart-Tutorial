void main() async {
  Stream<int> stream = getNumbers();
  stream.listen((event) {
    print(event);
  });

  // await getNumbers();
}

// the * after async is used to make the function a generator function (use yield instead of return)
Stream<int> getNumbers() async* {
  for (int i = 0; i < 10; i++) {
    await Future.delayed(Duration(seconds: 1), () => print(i));
    yield i;
  }
}
