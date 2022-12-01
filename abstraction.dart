//Abstraction:-
//hiding unnecessary detail is called abstraction.

// -) abstract class A {}
// -) abstract method:
//       void method_name();
// -) We cann't make the object and instance of abstract class.
// -) We can initialize the properties and method in abstract class.
// -) We can use inheritance to extract the abstract class.
// -) After Inheritance firstly implement the abstract method in inheritance class.

abstract class CreateAccount {
  CreateAccount.open() {
    _submitPapers();
    _approvalFromManager();
    _submitInDB();
  }

  void _submitPapers();
  void _approvalFromManager();
  void _submitInDB();
}

class makeAccount extends CreateAccount {
  makeAccount.open() : super.open();

  void _submitPapers() {
    print("paper submitted");
  }

  void _approvalFromManager() {
    print("Application has Approved");
  }

  void _submitInDB() {
    print("Data Addes in DB");
  }
}

// OR

// abstract class A {
//   int x = 10;
//   //abstract method
//   void display();
//   //method
//   void disp() {
//     print(x);
//   }
// }

// class B extends A {
//   void display() {
//     print('Abstract Class');
//     print(x);
//   }
// }
