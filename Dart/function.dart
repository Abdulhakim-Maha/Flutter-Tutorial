void main() {
  var score = sum(10, 15);
  print(score);
  printName('austin');
  print(pD());
}

int sum(int x, int y) {
  return x + y;
}

// Arrow function
void printName(name) => print(name);

// Default parameter
String pD({String name = 'austinqer', String lastname = 'maha'}) =>
    name + ' ' + lastname;
