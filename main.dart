import 'abstraction.dart';
import 'encapsulation.dart';

void main(List<String> args) {
  //Abstraction

  makeAccount mkAccount = makeAccount.open();

  // Object of Simple Example Abstraction
  // B b = B();
  // b.display();

  //Encapsulation Object
  BankAccount pkAccount = BankAccount();
  print(pkAccount.getBalance());
  pkAccount.deposite(1000);
  print(pkAccount.getBalance());
  pkAccount.withDraw(5000);
  print(pkAccount.getBalance());

  // Object or Instance
  Human human1 = Human("S M Ammad Ali", 20);
  human1.alive();
  human1.year();

  // Object or Instance
  Human human2 = Human("Shaheer", 19);
  human2.alive();
  human2.year();

  //Object or instance of Named Contructor
  SmartPhone smartPhone1 = SmartPhone.phone();
  smartPhone1.companyName = 'Hello World';
  smartPhone1.named();

  //Object or instance of Named Contructor
  SmartPhone smartPhone2 = SmartPhone.tablet();
  smartPhone2.companyName = 'Orange';
  smartPhone2.named();
}
//Class are defined as blueprint of the object. A Class is user defined data type.

class Human {
  //properties:- variable in class are called properties.

  String name = '';
  int age = 0;
  String gender = 'male';

  // method:- function in class are called method.

  alive() {
    print("$name is alive");
  }

  year() {
    print("$name age is $age");
  }

  //Contructor:- A constructor is a special function of the class that is responsible for initializing the variables of the class.

  // There are three types of constructors:
  //    Default constructor.
  //    Parameterized constructor.
  //    Named constructor.

  // Human(name){
  //   this.name=name;
  // }

  // Or Contructor are also used as. It is updated Contructor.

  Human(this.name, this.age);
}

class SmartPhone {
  //properties
  String companyName = '';

  // NamedContructor
  SmartPhone({this.companyName = ""});
  SmartPhone.tablet({this.companyName = ''});
  SmartPhone.phone({this.companyName = ''});

  named() {
    print('$companyName is Company name');
  }
}
