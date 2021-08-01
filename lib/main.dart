import 'package:flutter/material.dart';
import 'package:myapp_flutter/screens/home_screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'HelloToms App',
        home: HomeScreen());
  }
}
