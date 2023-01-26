import 'package:flutter/material.dart';
import 'package:sample_app/screens/login_page.dart';
import 'package:sample_app/screens/main_page.dart';
import 'package:sample_app/screens/sign_in_page.dart';
import 'package:sample_app/screens/splash_screen_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Sample App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(),
        '/login' : (context) => LoginPage(),
        '/signup' : (context) => SignInPage(),
        '/index' : (context) => MainPage()
      },
    );
  }
}
