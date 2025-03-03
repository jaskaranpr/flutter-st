import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Different background color
      child: ListView.builder(
        itemCount: 200,
        itemBuilder: (context, index) {
          return ListTile(
            key: ValueKey(index), 
            title: Text(
              'Portfolio $index',
              style: const TextStyle(color: Colors.amber), // Different text color
            ),
          );
        },
      ),
    );
  }
}
