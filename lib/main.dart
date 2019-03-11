import 'package:flutter/material.dart';
import 'package:recipe_book/ui/intro_page.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: IntroPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
