import 'dart:math';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:flutter/material.dart';

class Course_Details extends StatefulWidget {
  final course_details_name;

  Course_Details({this.course_details_name});
  @override
  _Course_DetailsState createState() => _Course_DetailsState();
}

class _Course_DetailsState extends State<Course_Details> {
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
      body: new ListView(
        children: <Widget>[
          new Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Center(
              child: new Text(
                widget.course_details_name,
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: Course_Content(),
          )
        ],
      ),
    );
  }
}

class Course_Content extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Courses_Contents(
            book: 'Books ',
            desc: 'Click here for Books',
          ),
          // Divider(
          //   color: Color.fromRGBO(7, 99, 37, 1),
          // ),
          Courses_Contents(
            book: 'Past Papers',
            desc: 'Click here for Papers',
          ),
          // Divider(
          //   color: Color.fromRGBO(7, 99, 37, 1),
          // ),
          Courses_Contents(
            book: 'Previous Assignmets',
            desc: 'Click here for Assignments',
          ),
          // Divider(
          //   color: Color.fromRGBO(7, 99, 37, 1),
          // ),
        ],
      ),
    );
  }
}

class Courses_Contents extends StatelessWidget {
  final String book;
  final String desc;
  final String icon;

  Courses_Contents({this.book, this.desc, this.icon});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            new MaterialPageRoute(
              // Passing the values ***********
              builder: (context) =>
                  new Course_Details(course_details_name: book),
            ),
          );
        },
        child: ListTile(
          leading: Icon(
            Icons.book,
            color: Color.fromRGBO(7, 99, 37, 1),
          ),
          title: Text(book),
          subtitle: Text(desc),
        ),
      ),
    );
  }
}
