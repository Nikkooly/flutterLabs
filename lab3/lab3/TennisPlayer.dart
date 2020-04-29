import 'Person.dart';

abstract class TennisPlayer {
  void playTennis();
}

class PeopleHobby extends Person with EnglishMixin implements TennisPlayer {

  PeopleHobby(age, height) : super(age, height);

  @override
  void playTennis() {
    print("Play tennis");
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
    print("---");
    print("Mixin");
    print("---");
  }
}