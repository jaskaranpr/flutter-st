import 'package:flutter/material.dart';

class Discover extends StatelessWidget {
  const Discover({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Different background color
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Portfolio $index',
              style: TextStyle(color: Colors.amber), // Different text color
            ),
          );
        },
      ),
    );
  }
}
