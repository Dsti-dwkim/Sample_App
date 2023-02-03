import 'package:flutter/material.dart';

import '../screens/date_picker.dart';
import '../screens/map_page.dart';
import '../screens/login_page.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Container(
              padding: EdgeInsets.all(5),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  Container(
                    padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Text(
                      '김도원',
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w800,
                          color: Colors.blue),
                    ),
                  ),
                  Container(
                    child: Text(
                      'dwkim@dsti.co.kr',
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.input),
            title: Text('Welcome'),
            onTap: () => {},
          ),
          ListTile(
            leading: Icon(Icons.verified_user),
            title: Text('Profile'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.border_color),
            title: Text('Feedback'),
            onTap: () => {Navigator.of(context).pop()},
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app),
            title: Text('Logout'),
            onTap: () => {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              )
            },
          ),
        ],
      ),
    );
  }
}
