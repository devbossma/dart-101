void main() {
  // This is a simple Dart program that demonstrates variable declaration and printing.

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
}
