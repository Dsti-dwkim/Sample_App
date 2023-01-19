import 'package:flutter/material.dart';
import 'package:sample_app/screens/login_page.dart';

import '../main.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "app",
      home: Scaffold(
        appBar: AppBar(
          title: Text('Main Page',
              style: TextStyle(fontWeight: FontWeight.w600)),
        ),
        body: Container(
          child: TextButton(
            child: Text('Logout'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ),
      ),
    );
  }
}
