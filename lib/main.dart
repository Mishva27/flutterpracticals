
import 'package:adfpracticals/practical5.dart';
import 'package:adfpracticals/practical6.dart';
import 'package:adfpracticals/practical8.dart';
import 'package:adfpracticals/practical9.dart';
import 'package:flutter/material.dart';
import 'practical3.dart';
import 'practical4.dart';
import 'practical2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: Practical2(),
      
    );
  }
}