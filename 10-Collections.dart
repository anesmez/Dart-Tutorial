// there are three built in collections in dart : List, Set, Map
void main() {
  // List : ordered collection of objects (called array in other languages)
  List names = ['John', 'Jane', 'Jack', 12];
  print(names);
  print("List length : ${names.length}");
  print(names[0]);
  for (var x in names) {
    print(x);
  }

  // we can specify the type with generics
  List<String> names2 = ['John', 'Jane', 'Jack'];
  print(names2);

  List<int> numbers = const [1, 2, 3];
  numbers.forEach((element) {
    print(element);
  });

  var names3 = names; // this will create a reference to the same object
  names3[0] = 'Peter'; // this will change the value in names as well
  print(names); 

  // to avoid this we can use the spread operator
  var names4 = [...names]; // this will create a new object (spreading names inside the square brackets)
  names4[0] = 'Peter'; // this will change the value in names4 only
  print(names);




  // Set : unordered collection of unique objects
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'}; // same in python
  for(var x in halogens) {
    print(x);
  }

  // we can also create a set from a list
  var halogens2 = halogens.toSet();
  for(var x in halogens2) {
    print(x);
  }

  // if we want to create an empty set we have to specify the type
  var halogens3 = {}; // this will create a  map instead of a set
  var halogens4 = <String>{}; // this will create an empty set

  // We can add an element to a set using the add method
  halogens.add('carbon');
  print(halogens);

  // We can remove an element from a set using the remove method
  halogens.remove('carbon');
  print(halogens);



  // Map : key-value pairs (same as dictionary in python)
  var gifts = {
    // key : value
    'first' : 'partridge',
    'second' : 'turtledoves',
    'fifth' : 'golden rings'
  };
  print(gifts);
  print(gifts['first']);

  // we can also create a map from a list of key-value pairs
  var gifts2 = Map.from(names.asMap()); // asMap() will return a map of the list using the index as the key
  print(gifts2);

  // we can also create an empty map
  var gifts3 = Map();
  gifts3['first'] = 'partridge';
  gifts3['second'] = 'turtledoves';
  print(gifts3);

}


/*
Difference between where(), map(), and forEach() in Dart
- where() : returns a new list containing all the elements that satisfy the given predicate
- map() : returns a new list containing the results of applying the given function to each element of the original list
- forEach() : applies the given function to each element of the list
*/