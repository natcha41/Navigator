import 'package:flutter/material.dart';
import 'screens/loginn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navigation Basics',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FirstRoute (title: 'Navigation Basics'),
    );
  }
}
