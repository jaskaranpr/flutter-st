import 'package:flutter/material.dart';

class Refer extends StatelessWidget {
  const Refer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal[600],
      child: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              'Refer $index',
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
