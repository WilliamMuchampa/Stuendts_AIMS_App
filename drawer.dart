import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: new ListView(
        children: <Widget>[
          // header
          new Container(
            child: new UserAccountsDrawerHeader(
              accountName: Text('William Muchampa'),
              accountEmail: Text('1812382125'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: AssetImage('images/williams.jpg'),
                ),
              ),
              decoration: new BoxDecoration(
                color: Color.fromRGBO(7, 99, 37, 1),
              ),
            ),
          ),

          //body

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Home Page'),
              leading: Icon(Icons.home, color: Colors.blueGrey),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Profile'),
              leading: Icon(Icons.person, color: Colors.blueGrey),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Announcements'),
              leading: Icon(Icons.announcement, color: Colors.blueGrey),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Course Material'),
              leading: Icon(Icons.school_sharp, color: Colors.blueGrey),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Results'),
              leading: Icon(Icons.score, color: Colors.blueGrey),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('My Payments'),
              leading: Icon(Icons.payment, color: Colors.blueGrey),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text(' School Register'),
              leading: Icon(Icons.app_registration, color: Colors.blueGrey),
            ),
          ),

          Divider(
            color: Colors.blueGrey,
            height: 10,
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('Settings'),
              leading: Icon(
                Icons.settings,
                color: Colors.green,
              ),
            ),
          ),

          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text('About'),
              leading: Icon(Icons.help, color: Colors.green),
            ),
          ),
          Divider(height: 70),
          Text('Created by The Guys Who Code'),
        ],
      ),
    );
  }
}
