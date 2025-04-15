import 'package:flutter/material.dart';

class Practical2 extends StatelessWidget {
  const Practical2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practical 2"),
      ),
      
      body: Center(
        child: Text(
          "Hello, World!",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}