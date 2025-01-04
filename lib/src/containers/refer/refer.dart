import 'package:flutter/material.dart';
import 'package:flutter_personal/src/components/header/header.dart';

class Refer extends StatelessWidget {
  const Refer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Column(
          children: [
            Header(page: "Refer"),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Refer $index'),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
