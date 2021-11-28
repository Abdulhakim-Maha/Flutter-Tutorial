void main() {
  //Data type

  // Static declare type
  bool number = true;
  int a = 10;
  double b = 3.14;
  String name = 'austiniqer';

  // Dynamic declare type
  var lastname = 'austiniqer';
  // lastname = 19;
  dynamic age = 19;
  // age = 'nineteen';

  // const and final
  const int score = 50;
  final total;
  total = 25;

  // String template
  const fname = 'abdulhakim';
  const lname = 'maha';

  // operators
  dynamic z = score / total; // division it returns double value
  // want to return int number use ~/ operator
  z = score ~/ total;
  //or use .toInt() method
  z = (score / total).toInt();

  //test
  // print(fname + ' ' + lname);
  // print('age: $age'); // use $ for infer to variable
  // print('my score : ${score + total}'); // use ${} for make operation
  print(z);
}
