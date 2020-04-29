import 'Person.dart';

abstract class TennisPlayer{
  void playTennis();
}
class Developer extends Person with EnglishMixin implements TennisPlayer {

  Developer(age, height) : super(age, height);

  @override
  void playTennis() {
    print("Tennis play");
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
    print("--,mdsndsnfmvds---");
    print("Mixin");
    print("-----kdsnvklsdnvlks");
  }
}