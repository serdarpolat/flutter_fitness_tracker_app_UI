import 'package:flutter/material.dart';
import 'package:flutter_life_app/pages/calories_section/calories.dart';
import 'package:flutter_life_app/pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  final pages = <String, WidgetBuilder> {
    MainPage.tag: (context)=>MainPage(),
    CaloriesPage.tag: (context)=>CaloriesPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Oswald',
      ),
      home: MainPage(),
      routes: pages,
    );
  }
}