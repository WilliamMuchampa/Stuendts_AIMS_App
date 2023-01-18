import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'course_details.dart';

class Engineer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Courses(
            course_name: 'Fundamentals of Information Security ',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Color.fromRGBO(7, 99, 37, 1),
          ),
          Courses(
            course_name: 'Internetworking Design Lan/Man 2',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Color.fromRGBO(7, 99, 37, 1),
          ),
          Courses(
            course_name: 'Introduction to Computer Systems',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Color.fromRGBO(7, 99, 37, 1),
          ),
          Courses(
            course_name: 'Electronics for Computing 3',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Color.fromRGBO(7, 99, 37, 1),
          ),
          Courses(
            course_name: 'Fibre Optics Technology',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Color.fromRGBO(7, 99, 37, 1),
          ),
          Courses(
            course_name: 'Internetworing Design lan/Man 1',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Colors.black,
          ),
          Courses(
            course_name: 'Database management Systems',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Colors.black,
          ),
          Courses(
            course_name: 'Java Programing',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Colors.black,
          ),
          Courses(
            course_name: 'Electronics For Computing 2',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Colors.black,
          ),
          Courses(
            course_name: 'Solid State Chemistry',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Colors.black,
          ),
          Courses(
            course_name: 'Electricity and Magnetism',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Colors.black,
          ),
          Courses(
            course_name: 'Interactive Web Development',
            course_descripton: 'Click for study materials',
          ),
          Divider(
            color: Colors.black,
          ),
          // Container(
          //   Center(
          //     padding: const EdgeInsets.only(
          //       top: 20,
          //     ),
          //     child: new Text('created by the guys who code'),
          //   ),
          // )
        ],
      ),
    );
  }
}

class Courses extends StatelessWidget {
  final String course_name;
  final String course_descripton;

  Courses({this.course_descripton, this.course_name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            new MaterialPageRoute(
              // Passing the values ***********
              builder: (context) => new Course_Details(
                course_details_name: course_name,
              ),
            ),
          );
        },
        child: ListTile(
          leading: Icon(
            Icons.school,
            color: Color.fromRGBO(7, 99, 37, 1),
          ),
          title: Text(course_name),
          // subtitle: Text(course_descripton),
          trailing: Icon(
            Icons.star,
            color: Color.fromRGBO(7, 99, 37, 1),
          ),
        ),
      ),
    );
  }
}
