import 'package:flutter/material.dart';
import 'package:gp_app/const.dart';


class sideDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        // Important: Remove any padding from the ListView.
        padding: EdgeInsets.zero,
        children: <Widget>[
          Container(
            color: kCardColor,
            child:    UserAccountsDrawerHeader(
              accountName: Text(" Asmaa Nasser"),
              accountEmail: Text("asmaa98seif@gmail.com"),
              currentAccountPicture: CircleAvatar(

                backgroundImage: NetworkImage('https://www.dostor.org/upload/photo/news/74/4/600x338o/604.jpg'),
              ),
            ),
          ),

          ListTile(
            leading: Icon(Icons.home), title: Text("Home"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings), title: Text("Settings"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.contacts), title: Text("Meet an expert"),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.calendar_today), title: Text("My Calendar "),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.logout), title: Text("Logout "),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}