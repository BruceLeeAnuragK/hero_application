import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hero_application/view/screen/home_page.dart';
import 'package:hero_application/view/screen/second_page.dart';
import 'package:hero_application/view/screen/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "home_page",
      routes: {
        "home_page": (context) => HomePage(),
        "second": (context) => SecondPage(),
        "third": (context) => ThirdPage(),
      },
    );
  }
}
