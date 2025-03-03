import 'package:flutter/material.dart';

class Refer extends StatelessWidget {
  const Refer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[600],
      child: ListView.builder(
        itemCount: 200,
        itemBuilder: (context, index) {
          return ListTile(
            key: ValueKey(index),
            title: Text(
              'Refer $index',
              style: const TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
