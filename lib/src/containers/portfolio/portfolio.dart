import 'package:flutter/material.dart';
import 'package:flutter_personal/src/components/header/header.dart';

class Portfolio extends StatelessWidget {
  const Portfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Column(
          children: [
            Header(page: "Portfolio"),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Portfolio $index'),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
