import 'package:app27_blog/pages/login.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyBlog',
      theme: ThemeData(
        primaryColor: Colors.red,
        accentColor: Colors.redAccent,
        secondaryHeaderColor: Colors.white,
      ),
      home: LoginSignup(),
    );
  }
}