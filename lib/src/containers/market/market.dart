import 'package:flutter/material.dart';
import 'package:flutter_personal/src/components/header/header.dart';

class Market extends StatelessWidget {
  const Market({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Column(
          children: [
            Header(page: "Market"),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Market $index'),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
