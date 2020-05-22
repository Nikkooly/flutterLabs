import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceDemo extends StatefulWidget {
  SharedPreferenceDemo() : super();
   static const routeName = '/noSH';
  final String title = "Shared Preference Demo";
 
  @override
  SharedPreferenceDemoState createState() => SharedPreferenceDemoState();
}
 
class SharedPreferenceDemoState extends State<SharedPreferenceDemo> {
  //
  String data = "";
  String nameKey = "_key_name";
  String n="удалено";

  TextEditingController controller = TextEditingController();
 

  Future<bool> saveData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return await preferences.setString(nameKey, controller.text);
  }
 
  Future<String> loadData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(nameKey);
  }
  Future<bool> deleteData() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.remove(nameKey);
  }
 
  setData() {
    loadData().then((value) {
      setState(() {
        data = value;
        if(data==null){
          data=n;
        }
      });
    });
  }
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            TextField(
              controller: controller,
              decoration: InputDecoration.collapsed(hintText: "Enter Name"),
            ),
            OutlineButton(
              child: Text("CREATE"),
              onPressed: () {
                saveData();
              },
            ),
            Text(
              data,
              style: TextStyle(fontSize: 20),
            ),
            OutlineButton(
              child: Text("READ"),
              onPressed: () {
                setData();
              },
            ),
            OutlineButton(
              child: Text("DELETE"),
              onPressed: () {
                deleteData();
              },
              )
          ],
        ),
      ),
    );
  }
} 