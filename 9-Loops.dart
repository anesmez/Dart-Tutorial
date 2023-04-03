void main() {
  // standard for loop
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  // for-in loop
  var collection = [0, 1, 2];
  for (var x in collection) {
    print(x);
  }

  // for each loop
  collection.forEach((c) => print(c)); // iterates over collection and passes each element to the function

  // while loop
  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }

  // do-while loop
  int j = 1;
  do {
    print(j);
    j++;
  } while (j <= 10);

  // break and continue
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      break; // breaks out of the loop
    }
    print(i);
  }

  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      continue; // skips the current iteration
    }
    print(i);
  }
}
