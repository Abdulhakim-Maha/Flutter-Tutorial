import 'Account.dart';

void main(List<String> args) {
  var b1 = Account(1, 50000, 'austin');
  print(b1);
  b1.withdraw(5000);
  print(b1);
  b1.deposit(1000000);
  print(b1);

  // // var b2 = Account(, _age)
  // b1.showData();
  // b1.setNameAndAge('austiniqer');
  // b1.showData();
}
