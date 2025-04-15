import 'package:flutter/material.dart';

class Practical4 extends StatelessWidget {
  const Practical4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Practical 4',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple, 
      ),
      body: Center(
        child: Column(
          children: [
             const SizedBox(height: 20),

            //Elevated Button
            ElevatedButton(
              onPressed: () {
                showSnackBar(context, 'Elevated Button Pressed!');
              },
              child: Text("Elevated Button"),
            ),

            const SizedBox(height: 10),

            //Text Button
            TextButton(
              onPressed: (){
                showSnackBar(context, 'Text Button Pressed!');
              },
              child: const Text('Text Button'),
            ),

            //Icon Button
            IconButton(
              onPressed: (){
                showSnackBar(context, 'Icon Button Pressed!');
              },
              icon: const Icon(Icons.thumb_up),
              tooltip: 'Icon Button',
            ),

            //floating Action Button
            FloatingActionButton(
              onPressed: (){
                showSnackBar(context, 'Floating Action Button Pressed!');
              },
              child: const Icon(Icons.add),
              tooltip: 'Floating Button',
            ),

            const SizedBox(height: 20),

            //Outlined Button
            OutlinedButton(
              onPressed: (){
                showSnackBar(context, 'Outlined Button Pressed!');
              },
              child: const Text('Outlined Button'),
            ),
          ],
        ),
      ),
    );
  }

  void showSnackBar(BuildContext context, String message){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message),),
    );
  }
}

