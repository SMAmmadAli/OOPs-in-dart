// Encapsulation:-  Encapsulation is use to hide the specific property
// or method to outer class. those property or method only accessible with in class.
// 0R
//Combination of property to method is called Encapsulation.
class BankAccount {
  //underScore "_" is used properties make private.
  // private means we have not directly used the properties in other class.
  // here "?" is the balance can should be null.
  num? _balance = 0;

  //getter method
  num? getBalance() => _balance;

  //setter method
  void deposite(num amount) {
    if (amount > 0) {
      _balance = _balance! + amount;
    } else {
      throw Exception("Amount should not less than be 0");
    }
  }

  void withDraw(num amount) {
    if (amount > 0 && amount <= amount) {
      _balance = _balance! - amount;
    } else {
      throw Exception("Amount should not less than be 0");
    }
  }
}
