import 'package:facebook_clone/HomePage.dart';
import 'package:facebook_clone/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        routes: {
        '/':(context) => Splash(),
        '/login': (context) => HomePage(),
        }
    );
  }
}