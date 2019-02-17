import 'package:flutter/material.dart';
//Debug app
import 'package:flutter/rendering.dart';
import './pages/auth.dart';

// void main() => runApp(MyApp());
void main() {
  //Set paint Size true to see margin
  // debugPaintSizeEnabled = true;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override //Method to override default constructor on StatelessWidget
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Color(0xFFFFB300), 
          accentColor: Colors.amberAccent),
      home: AuthPage(),
    );
  }
}
