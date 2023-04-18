// this program will create a file in the same directory named <what you'll type in the terminal>

import 'dart:io'; //this is needed in order to use the File class

main(List<String> filename) {
  if (filename.isEmpty) {
    print('Please provide a filename');
    exit(
        1); // exit the program, by convention 0 means success, 1 means failure (in this case the program failed to run)
  }
  String inputFile = filename.first; // get the first argument
  print(inputFile);
  File file = File(inputFile); // create a File object

  // create a file
  file.createSync(); // create a file synchronously

  // check if a file exists
  if(file.existsSync()) {
    print('File exists');
  } else {
    print('File does not exist');
  }

  // write to a file
  file.writeAsStringSync('Hello World'); // write to a file synchronously

  // append to a file
  file.writeAsStringSync('Hello World 2', mode: FileMode.append); // append to a file synchronously

  // read from a file
  String contents = file.readAsStringSync(); // read from a file synchronously
  print(contents);

  // read from a file line by line
  List<String> lines = file.readAsLinesSync(); // read from a file line by line synchronously 

  // rename a file
  file.renameSync('newName.txt'); // rename a file synchronously

  // copy a file
  file.copySync('newName.txt'); // copy a file synchronously


  // delete a file
  // file.deleteSync(); // delete a file synchronously
}
