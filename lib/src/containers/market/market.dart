import 'package:flutter/material.dart';

class Market extends StatelessWidget {
  const Market({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple[900], // Dark background color
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Market $index',
              style: TextStyle(color: Colors.amberAccent), // Light text color
            ),
          );
        },
      ),
    );
  }
}
