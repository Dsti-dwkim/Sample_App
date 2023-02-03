import 'package:flutter/material.dart';
import 'package:sample_app/screens/map_page.dart';
import 'package:sample_app/screens/login_page.dart';
import 'package:sample_app/screens/main_page.dart';
import 'package:sample_app/screens/sign_in_page.dart';
import 'package:sample_app/screens/splash_screen_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/' : (context) => SplashScreen(),
        '/login' : (context) => const LoginPage(),
        '/signup' : (context) => const SignInPage(),
        '/index' : (context) => const MainPage(),
        '/map' : (context) => const MapPage(),
      },
    );
  }
}
