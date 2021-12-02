class Account {
  int _id;
  String _username;
  double _balance;

  // Constructor
  Account(this._id, this._balance, this._username);

  // setter

  void setUsername(String name) {
    this._username = name;
  }

  void setId(int id) {
    this._id = id;
  }

  void setBalance(double amount) {
    this._balance = amount;
  }

  // getter
  String getUsername() {
    return this._username;
  }

  int getId() {
    return this._id;
  }

  double getBalance() {
    return this._balance;
  }

  //methods
  void withdraw(double amount) {
    this._balance -= amount;
  }

  void deposit(double amount) {
    this._balance += amount;
  }

  @override
  String toString() {
    return "Id: $_id \nUsername: $_username \nBalance: $_balance bath";
  }
}
