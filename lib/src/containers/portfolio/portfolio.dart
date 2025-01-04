import 'package:flutter/material.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[700], // Dark background color
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
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
