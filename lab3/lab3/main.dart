import 'dart:async';
import 'PeopleHobby.dart';
import 'Tennis.dart';
import 'TennisPlayer.dart';

void main() async{

  PeopleHobby developer = new PeopleHobby(50, 100);
  developer.printAge();
  developer.playTennis();
  developer.funWithNamedArg();

  developer.saySomethingInEnglish();

  List<int> intCollect = List();
  intCollect.add(2);

  List<String> stringArray =List(2);
  stringArray[0] = "sda";
  stringArray[1] = "abdbfd";

  Set<String> a = Set();
  a.add("value1");
  a.add("value2");
  a.add("value3");
  a.add("value4");

  outLoop:for(int i = 0; i < 15; i++) {
    inLoop:for(int i = 0; i < 15; i++) {
      if(i % 2 == 0) continue outLoop;
      if(i== 7) break inLoop;
    }
  }

  try {
    stringArray[2] = "123123123123123";
  } catch(error) {
    print("Error: $error");
  }
  finally{

  }

  Tennis potato1 = Tennis(1.28);
  Tennis potato2 = Tennis(2.28);
  print("-----------------------------------------");
  print(potato1.compareTo(potato2));
  print("-----------------------------------------");

  var json = developer.toJson().toString();
  print(json);
  int val = await sayHello();
  print(val);

  var controller = StreamController<String>();

  controller.stream.listen((item) => print(item));
  // controller.stream.listen((item) => print(item + '2'));
  controller.add("event1");
  controller.add("event2");
  controller.add("event3");
  controller.add("event4");

  var broadcastController = StreamController.broadcast();
  broadcastController.stream.listen((item) => print('broadcast1 ' + item));
  broadcastController.stream.listen((item) => print('broadcast1 ' + item));
  broadcastController.add("Fught with Vitalik");
  broadcastController.add("Vitalik Sore");
  broadcastController.add("Vitalik went to .... BSTU");
  broadcastController.add("Vitalik Sore");
}

Future<int> sayHello() async{
  Timer(Duration(seconds: 5), () {
    print("Hello!");
  });
  return 505;
}

