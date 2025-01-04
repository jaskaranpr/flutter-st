import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final dynamic page;
  const Header({super.key, this.page});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 24, left: 16, right: 16, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://files.coinswitch.co/genesis-static-assets/assets/lemonn_light.png',
            // 'https://picsum.photos/250?image=7',
            width: 95,
            height: 40,
            fit: BoxFit.cover,
          ),
          Row(
            children: [
              Image.network(
                'https://files.coinswitch.co/genesis-static-assets/assets/header_search_light.png',
                // 'https://picsum.photos/250?image=8',
                width: 36,
                height: 36,
                fit: BoxFit.cover,
              ),
              SizedBox(width: 12),
              Image.network(
                'https://files.coinswitch.co/genesis-static-assets/icons/general/png/smile_blue.png',
                // 'https://picsum.photos/250?image=9',
                width: 36,
                height: 36,
                fit: BoxFit.cover,
              )
            ],
          ),
        ],
      ),
    );
  }
}
