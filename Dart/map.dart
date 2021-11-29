void main(List<String> args) {
  Map<String, Object> user = {
    'fname': 'Abdulhakim',
    'lname': 'Maha',
    'age': 19,
    'level': 'sophomore',
    'hobby': ['programming', 'play game']
  };
  print(user);

  // list to map
  var list = ['austin', 'maha', 'c'];
  var listToMap = list.asMap();
  print(listToMap);
}
