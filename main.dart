import 'package:flutter/material.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/rendering.dart';
import 'package:icu_study_app/drawer.dart';
import 'package:icu_study_app/engineer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.0,
        backgroundColor: Color.fromRGBO(7, 99, 37, 1),
        title: Text('School of Engineering'),
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.search, color: Colors.white),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(Icons.notification_important, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      drawer: MainDrawer(),
      body: Engineer(),
    );
  }
}
