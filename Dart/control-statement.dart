void main() {
  var num1 = 50;
  bool state = true;
  var num = 5;

  // default if-else
  // if (num1 == 100 && state) {
  //   print('yes');
  // } else if (num1 == 50) {
  //   print('half it');
  // } else {
  //   print('no');
  // }

  // ternary operator
  // var check = (num1 == 100) ? 'yes' : 'no';
  // print(check);

  // Switch case
  switch (num) {
    case 2:
      print('it\': $num');
      break;
    case 3:
      print('it\': $num');
      break;
    default:
      print('dont catch');
  }
}
