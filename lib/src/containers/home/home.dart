import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[900], // Dark background color
      child: ListView.builder(
        itemCount: 200,
        itemBuilder: (context, index) {
          return ListTile(
            key: ValueKey(index), // Use ValueKey to avoid unnecessary rebuilds
            title: Text(
              'Home $index',
              style: const TextStyle(color: Colors.white), // Light text color
            ),
          );
        },
      ),
    );
  }
}
