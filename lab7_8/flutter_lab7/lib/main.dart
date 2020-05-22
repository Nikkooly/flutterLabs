import 'package:flutter/material.dart';
import 'package:flutter_lab7/sqlite.dart';
import 'package:flutter_lab7/shared_preference.dart';
import 'package:flutter_lab7/path_provider.dart';
import 'package:flutter_lab7/path/path_ApplicationDocumentsDirectory.dart';
import 'package:flutter_lab7/path/path_TemporaryDirectory.dart';
import 'package:flutter_lab7/path/path_ApplicationSupportDirectory.dart';
import 'package:flutter_lab7/path/path_ExternalStorageDirectory.dart';
import 'package:flutter_lab7/cloud_firestore/fireStoreCrud.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        onGenerateRoute: (settings) {
          if (settings.name == PassArgumentsScreen.routeName) {
            final ScreenArguments args = settings.arguments;
            return MaterialPageRoute(
              builder: (context) {
                return PassArgumentsScreen(
                  title: args.title,
                  message: args.message,
                );
              },
            );
          }
          assert(false, 'Need to implement ${settings.name}');
          return null;
        },
        title: 'Navigation with Arguments',
        home: HomeScreen(),
        routes: {
          ExtractArgumentsScreen.routeName: (context) =>
          ExtractArgumentsScreen(),
          HobbyPage.routeName: (context) =>
          HobbyPage(),
          SharedPreferenceDemo.routeName: (context) =>
          SharedPreferenceDemo(),
          PathPage.routeName: (context) =>
          PathPage(title: 'path_provider'),
          PathDemo.routeName: (context) =>
          PathDemo(storage:TextStorage()),
          PathTemporaryDirectory.routeName: (context) =>
          PathTemporaryDirectory(storage:TextStorageTemporaryDirectory()),
          PathApplicationSupportDirectory.routeName: (context) =>
          PathApplicationSupportDirectory(storage:TextStorageApplicationSupportDirectory()),
          PathExternalStorageDirectory.routeName: (context) =>
          PathExternalStorageDirectory(storage:TextStorageExternalStorageDirectory()),
          FirestoreCRUDPage.routeName: (context) =>
          FirestoreCRUDPage()

        });
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              RaisedButton(
              child: Text("SQLITE"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                 HobbyPage.routeName
                );
              },
            ),
               RaisedButton(
              child: Text("SHARED"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                SharedPreferenceDemo.routeName
                );
              },
            ),
               RaisedButton(
              child: Text("Path"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                PathPage.routeName
                );
              },
            ),
               RaisedButton(
              child: Text("Path_ApplicationDocumentsDirectory"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                PathDemo.routeName
                );
              },
            ),
             RaisedButton(
              child: Text("Path_TemporaryDirectory"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                 PathTemporaryDirectory.routeName
                );
              },
            ),
             RaisedButton(
              child: Text("Path_ApplicationSupportDirectory"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                PathApplicationSupportDirectory.routeName
                );
              },
            ),
            RaisedButton(
              child: Text("Path_ExternalStorageDirectory"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                PathExternalStorageDirectory.routeName
                );
              },
            ),
            RaisedButton(
              child: Text("FirestoreCRUDPage"),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                FirestoreCRUDPage.routeName
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
   
    final ScreenArguments args = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}

class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;
  const PassArgumentsScreen({
    Key key,
    @required this.title,
    @required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}

class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);
}