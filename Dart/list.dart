void main() {
  List x = [10, 20, 50, 'austin', true];
  print(x);

  // Type Interface using generic
  List<String> user = ['austin', 'Joe', 'Toe', 'Justin'];
  print(user);
  print(user.length);

  // add member in list use add method
  user.add('Abdulhakim');
  print(user);

  // for loop in list
  for (int i = 0; i < user.length; i++) {
    print('member : ${user[i]}');
  }

  // foreach in list
  for (var item in user) {
    print(item);
  }

  // function in lis
  //add(value)

  //addAll(list)
  var newUser = ['king', 'kim', 'bareen', 'saleang'];
  user.addAll(newUser);

  // //insert(index, value)
  user.insert(0, 'Fome');
  print(user);

  // //insertAll(index, list)
  var extraUser = ['Newyear', 'Far'];
  user.insertAll(0, extraUser);
  print(user);

  //remove(value)
  //removeRange(start, stop-1)
  //removeAt(index)

  // similar to filter in javaScript
  //removeWhere((item) => item % 2 == 0);
  user.removeWhere((element) => element == 'austin');
  print(user);
}
