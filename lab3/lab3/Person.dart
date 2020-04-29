abstract class Person {

  Person(this._height, this._age);

  int _age;
  int _height;
  
  int get age => _age;
  int get height => _height;

  void printAge() {
    print(_age.toString());
  }

  void printHeight() {
    print(_height);
  }
}