import 'package:flutter/material.dart';

class Market extends StatelessWidget {
  const Market({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[900], // Dark background color
      child: ListView.builder(
        itemCount: 200,
        itemBuilder: (context, index) {
          return ListTile(
            key: ValueKey(index),
            title: Text(
              'Market $index',
              style: const TextStyle(
                  color: Colors.amberAccent), // Light text color
            ),
          );
        },
      ),
    );
  }
}
