import 'Person.dart';
import 'Programmer.dart';

class Developer extends Person with EnglishMixin implements Programmer {

  Developer(age, height) : super(age, height);

  @override
  void fixBug() {
    print("Bug fixed");
  }

  @override
  void writeCode() {
    print("print('some code')");
  }

  @override
  void printHeight() {
    super.printHeight();
  }

  @override
  void printAge() {
    super.printAge();
  }

  void funWithNamedArg({String name = "name"}) {
    print(name);
  }

  void funWithFunction(Function fun) {
    fun();
  }

 
  Map<String, dynamic> toJson() =>
    {
      'age': age,
      'height': height
    };

  static String companyName = "companyName";
}

mixin EnglishMixin {
  void saySomethingInEnglish() {
    print("************************************************");
    print("Mixin");
    print("************************************************");
  }
}