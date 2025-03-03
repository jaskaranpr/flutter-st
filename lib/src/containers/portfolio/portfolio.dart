import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[700], // Dark background color
      child: ListView.builder(
        itemCount: 200,
        itemBuilder: (context, index) {
          return ListTile(
            key: ValueKey(index),
            title: Text(
              'Portfolio $index',
              style:
                  TextStyle(color: Colors.amberAccent[100]), // Light text color
            ),
          );
        },
      ),
    );
  }
}
