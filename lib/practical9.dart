import 'package:flutter/material.dart';

class Practical9 extends StatelessWidget {
  final List<String> imageUrls = [
    'https://images.pexels.com/photos/414612/pexels-photo-414612.jpeg',
    'https://images.pexels.com/photos/674010/pexels-photo-674010.jpeg',
    'https://images.pexels.com/photos/34950/pexels-photo.jpg',
    'https://images.pexels.com/photos/462162/pexels-photo-462162.jpeg',
    'https://images.pexels.com/photos/104827/cat-pet-animal-domestic-104827.jpeg',
    'https://images.pexels.com/photos/617278/pexels-photo-617278.jpeg',
    'https://images.pexels.com/photos/45201/kitty-cat-kitten-pet-45201.jpeg',
    'https://images.pexels.com/photos/141496/pexels-photo-141496.jpeg',
    'https://images.pexels.com/photos/1170986/pexels-photo-1170986.jpeg',
    'https://images.pexels.com/photos/160755/kittens-cat-cat-puppy-rush-160755.jpeg',
    'https://images.pexels.com/photos/1931367/pexels-photo-1931367.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nature Gallery'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 1.0,
          ),
          itemCount: imageUrls.length,
          itemBuilder: (context, index) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(12.0),
              child: Image.network(
                imageUrls[index],
                fit: BoxFit.cover,
              ),
            );
          },
        ),
      ),
    );
  }
}

