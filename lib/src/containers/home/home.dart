import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900], // Dark background color
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Home $index',
              style: TextStyle(color: Colors.white), // Light text color
            ),
          );
        },
      ),
    );
  }
}
