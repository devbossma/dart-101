void main() {
  // This is a simple Dart program that demonstrates variable declaration and printing.

  // Should know that everything in Dart is an object, so eather a type is builtin or user definded,
  // it still actually an instance of classes and inherit from Object.


  /**
   * In Dart, you can declare variables using the var keyword.
   * Variables can hold different types of data, such as strings, numbers, lists, and maps.
   * You can print variable values to the console using the print() function.
   */
  var name = 'Voyager I';
  var year = 1977;
  var antennaDiameter = 3.7;
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  var image = {
    'tags': ['saturn'],
    'url': '//path/to/saturn.jpg',
  };

  print('Name: $name');
  print('Year: $year'); 
  print('Antenna Diameter: ${antennaDiameter}m');
  print('Flyby Objects: ${flybyObjects.join(', ')}');
  print('Image URL: ${image['url']}');

  /**
    * multiple lines
    * of
    *comments
  */

  // one single line of comment
  // oan other single line of comment

  /**
   * You may use the {Better Comments} Extenssion for the Following
   *   Declaration of a Class or Method
   * * Hilight Importants Thinks or instrauctions.
   * @params 
   * @return
   * @throw
   * @return
   * ? Making Questions
   * ! Danger for Depreceted Methods or Class
   * TODO: Assign a Todo this will appear in the problems outputs of VsCode until you delete it.
   */


  // now let's figure out how to get the Variable type.
  // lets focus on the variables we have declared using the "var" keyword;

  // the function [ runtimeType ] will simply return the type innfured to these variables. see bellow VVV

  print("The Type Of 'var name ' is: ##### ${name.runtimeType}");
  print("The Type of 'var year' is:  ##### ${year.runtimeType} ");
  print("The Type of 'var antennaDiameter' is: ##### ${antennaDiameter.runtimeType}");
  print("The Type of 'var flybyObjects' is: ##### ${flybyObjects.runtimeType}");
  print("The Type of 'var image' is: ##### ${image.runtimeType}");

/**
* So The input will looks like: 
* The Type Of 'var name ' is: ##### String
* The Type of 'var year' is:  ##### int 
* The Type of 'var antennaDiameter' is: ##### double
* The Type of 'var flybyObjects' is: ##### List<String>
* The Type of 'var image' is: ##### _Map<String, Object>
*/



Object fisrt_name = 'Bob';

print(fisrt_name.runtimeType);

fisrt_name = 23;


print(fisrt_name.runtimeType);

// name =23;
// print(name.runtimeType); // Error: A value of type 'int' can't be assigned to a variable of type 'String'.

dynamic id = 12;
print(id.runtimeType);
id = "12";

print(id.runtimeType);

// From above we saw that Object keyword and dynamic key word are not forcing variables to  store only one datatype 
// that should take us to fugure out what are the differences amoung "var, Object and dynamic" keywords.



/* ####### Object ########

### Root of the Type Hierarchy:
    Object is the supertype of all Dart types. 
    Every class and data type implicitly or explicitly extends Object.
### Static Type Checking: 
    When a variable is declared as Object (or Object? for nullable objects), 
    Dart's static analyzer and compiler still enforce type safety. 
    You cannot directly call methods or access properties specific to a particular type (e.g., substring on a String)
    without first casting the Object to that specific type or performing a type check.
### Compile-time Safety: 
    This approach provides compile-time safety, catching potential type-related errors before runtime.
*/

Object string = "Hello word";
print(string);

// !!!!!!!!!!!!!!!!!!!    But    !!!!!!!!!!!!!!!!!!!!!!

//print(string.toUpperCase()); The output will gives you an Error: The method 'toUpperCase' isn't defined for the class 'Object'.


/* ####### dynamic ########
### Disables Static Type Checking: dynamic is a special type that tells the Dart compiler to bypass static type checking for that variable.
  The type of a dynamic variable is determined at runtime. 

### Runtime Type Checking: While dynamic allows for greater flexibility in assigning different types to a variable,
  it shifts type checking to runtime. If you attempt to call a method or access a property that the underlying object does not possess, 
  a runtime error will occur.

### Flexibility with Caution: dynamic can be useful in scenarios where the exact type is unknown until runtime, 
  such as when parsing JSON data or interacting with external systems. 
  However, its overuse can lead to less readable code and more difficult debugging due to the lack of compile-time type enforcement.
*/

// So {dynamic} is A type that disables static type checking, allowing a variable to hold values of any type at runtime.

dynamic string_2 = "Hello word agin!";
print(string_2.toUpperCase()); // that will works fine.

//############### But we can explecetely Defines our Data Types befor the compile Time >>>>>

// The following lines of code explaine all data types in Dart language



// ######### ######### Built-in types ######## ########

// Strings values
  String imageUrl = "src/public/images/logo.png";

// numirical values
  int age = 35;
  double price = 9.99;
  num any = 12; // num type can hold int and/or double types.
  any = 12.5; // num can also hold double values
  print('Any: ${any}');

  // Bouleans
  bool inStock = true;

  // Null safty just adding "?" after type keyword > {String?, int? ...}
  String? nullable;

  print('Image URL: $imageUrl');
  print('The Creator of thsi Repo is ${age}');
  print('Price: \$${price}');
  print('In Stock: ${inStock}');
  print('Nullable: ${nullable ?? "null"}');

  print(nullable.runtimeType); // we will get "Null" as result. 


// in Other programming languages we may call the follwing Types Non-Premetives types, but that in Dart is no tha case
// As we duscussed before Every type in Dart is an Object or Instance of an object.


// 1. List: Ordered collections of values (analogous to arrays).
// Declared as : List<T> variable_name;
  List<String> imageTags = ['tag1', 'tag2'];
  print('Image Tags: ${imageTags.join(', ')}');



  Map<String, String> adresses = {'billing' : 'Billing Adress', 'shipping' : 'Shipping Adress' };
  print(adresses);

  
  


}