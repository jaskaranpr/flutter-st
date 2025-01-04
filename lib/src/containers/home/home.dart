import 'package:flutter/material.dart';
import 'package:flutter_personal/src/components/header/header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: Column(
          children: [
            Header(page: "Home"),
            Expanded(
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Home $index'),
                  );
                },
              ),
            ),
          ],
        ));
  }
}
