

void main(){
Hobbies tennis= TennisHobbies();
tennis.nameOfHobby="Tennis";
tennis.display();

ModelHobbies modelHobbies=ModelHobbies("Tennis","Programming");
modelHobbies.hobbyDisplay();

DartsHobbies.nameOfGame("Darts");

DartsHobbies vasya=DartsHobbies.undefined();
vasya.displayGamers();

DartsHobbies misha=DartsHobbies.fromName("Misha");
misha.displayGamers();

DartsHobbies event=DartsHobbies.winners(event:"World cup of darts 2019",countOfLosers:55);
event.number=58;
print(event.event);
print("Count of winner: "+ event.number.toString());

double chance=DartsHobbies.countOfWinners/DartsHobbies.countOfPlayers*100;
print("Chance to win: "+ chance.toString().substring(0,3)+" %");

//list map
List<String> hobbies=["Sleeping","Drinking","Coding"];
hobbies.add("Studing");
hobbies.removeLast();
hobbies.sort();
for(var n in hobbies) {
  print(n);
}
Map <int,String> map = {
  1: "Swimming",
  2: "Diving",
  3: "Football",
  4: "Hand-to-hand fighting"
};
print(map[2]);
print("All items");
    for(var item in map.entries){
        print("${item.key} - ${item.value}");
    }
    print("Keys");
    for(var key in map.keys){
         
        print(key);
    }
    print("Values");
    for(var value in map.values){
         
        print(value);
    }
    //continue break
    for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= 3; j++) {
      if (i == 2 && j == 2) continue;
      print('$i $j');
    }
  }
  print("-------");
  for (var i = 1; i <= 3; i++) {
    for (var j = 1; j <= 3; j++) {
      print('$i $j'); break;
    }
  }
    print("-------");
    var myList = [72, 9, 67];
    try {
        for(var i=0;i<10;i++) {
            print(myList[i]);
        }
    } catch (e) {
        print('Something happened while printing the list');
        print('Printing out the message: $e');
    }
    print("-------");
    var myListOn = [52, 6, 87];
    try {
        for(var i=0;i<10;i++) {
            print(myListOn[i]);
        }
    } on RangeError {
        print('You are coming out of range for the list. Check the range you are considering');
    } catch (e) {
        print('Something unknown exception happened while printing the list');
    }
}


class Hobbies{
String nameOfHobby;
void display()=> print("Name of hobby is: $nameOfHobby");
}


abstract class TennisFactory{
void drop() => print("Not implimented");
}


abstract class ModelFactory {
//void addPriceFigure(int price)
//print("Price: $price");
String hobby;
ModelFactory(this.hobby);
void hobbyDisplay(){
print("This is $hobby");
}
}

class ModelHobbies extends ModelFactory{
String work;
ModelHobbies(hobby,this.work) : super(hobby);
@override
    void hobbyDisplay(){
      super.hobbyDisplay();
      print("This is $work");
    }
}
class TennisHobbies extends TennisFactory implements Hobbies{
String nameOfHobby;
void display(){
  print("Name of hobby is: $nameOfHobby");
}
void drop(){
  print("Drop in target");
}
}
class DartsHobbies {
  String name,event;
  int countOfPoints,numberOfWinners,countOfLosers;
//constructors
DartsHobbies.undefined(){
   name="Vasya";
   countOfPoints=55;
}
DartsHobbies.fromName(String nameOfGamer){
   name=nameOfGamer;
  countOfPoints=85;
}
DartsHobbies.nameOfGame(String name){
  print("Name of game: $name");
}
void displayGamers(){
        print("Name is: $name || Count of points: $countOfPoints");
    }
    //get set
    int get number{
      return numberOfWinners;
    }
    void set number(int countOfGamers){
      numberOfWinners=countOfGamers-countOfLosers;
    }
    DartsHobbies.winners({this.event,this.countOfLosers,});
//static fields; functions
  static int countOfPlayers=58,countOfWinners=3;

  void info(String text) => print(text);

  void playerNumberOne({String text="Vitaliy Fillipov"}) =>print(text);

  void playerNumberTwo(Function fun) => fun();
  void nameOfPlayer({String text="Andrei Akushevich"})=>print(text);

  void playerNumberThree(String text, [int age]) =>{print(text), print(age)};

}