import 'package:flutter/material.dart';

class Practical8 extends StatefulWidget {
  @override
  _Practical8State createState() => _Practical8State();
}

class _Practical8State extends State<Practical8> {
  final List<Map<String, String>> contacts = [
    {'name': 'Mishva Sankhavara', 'phone': '+91 11111 00000'},
    {'name': ' Nauman Sama', 'phone': '+91 11111 00000'},
    {'name': 'Palak Kanani', 'phone': '+91 11111 00000'},
    {'name': 'Nirali Kikani', 'phone': '+91 11111 00000'},
    {'name': 'Komal Budhdhdev', 'phone': '+91 11111 00000'},
    {'name': 'Drashti Baraiya', 'phone': '+91 11111 00000'},
    {'name': 'Rahul Sharma', 'phone': '+91 11111 00000'},
    {'name': 'Kishan Kamani', 'phone': '+91 11111 00000'},
    {'name': 'Moiz Vaghela', 'phone': '+91 11111 00000'},
    {'name': 'Prasann Budhdheliya', 'phone': '+91 11111 00000'},
    {'name': 'Prasant Makwana', 'phone': '+91 11111 00000'},
    {'name': 'Ved Barbhaya', 'phone': '+91 11111 00000'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Diary'),
        backgroundColor: Colors.blue.shade700,
      ),
      body: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue.shade700,
                child: Text(
                  contacts[index]['name']![0],
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              title: Text(
                contacts[index]['name']!,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                contacts[index]['phone']!,
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              trailing: IconButton(
                icon: Icon(Icons.call, color: Colors.green),
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Calling ${contacts[index]['name']}...')),
                  );
                },
              ),
            ),
          );
        },
      ),
    );
  }
}
