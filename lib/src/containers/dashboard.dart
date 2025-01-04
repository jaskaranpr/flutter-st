import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_personal/src/components/header/header.dart';
import 'package:flutter_personal/src/containers/discover/discover.dart';
import 'package:flutter_personal/src/containers/home/home.dart';
import 'package:flutter_personal/src/containers/market/market.dart';
import 'package:flutter_personal/src/containers/portfolio/portfolio.dart';
import 'package:flutter_personal/src/containers/refer/refer.dart';
import 'package:flutter_svg/svg.dart';
import 'package:lottie/lottie.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  final PageController pageController = PageController(initialPage: 0);
  int _selectedIndex = 0;

  final List<Map<String, String>> navigationItems = [
    {
      'label': 'Home',
      'inActiveIcon': 'assets/svg/lemonn-home.svg',
      'activeIcon': 'assets/lottie/Dark_Home.json',
    },
    {
      'label': 'Portfolio',
      'inActiveIcon': 'assets/svg/lemonn-portfolio.svg',
      'activeIcon': 'assets/lottie/Dark_Portfolio.json',
    },
    {
      'label': '',
      'inActiveIcon': 'assets/svg/lemonn-discover.svg',
      'activeIcon': 'assets/lottie/Dark_Discover.json',
    },
    {
      'label': 'Market',
      'inActiveIcon': 'assets/svg/lemonn-market.svg',
      'activeIcon': 'assets/lottie/Dark_Market.json',
    },
    {
      'label': 'Refer',
      'inActiveIcon': 'assets/svg/lemonn-refer.svg',
      'activeIcon': 'assets/lottie/Dark_Refer.json',
    },
  ];

  List<Expanded> _buildBottomNavigationBarItems() {
    return List.generate(navigationItems.length, (index) {
      var isActive = _selectedIndex == index;
      var label = navigationItems[index]['label']!;
      var activeIcon = navigationItems[index]['activeIcon']!;
      var inActiveIcon = navigationItems[index]['inActiveIcon']!;
      if (label == '') {
        return Expanded(child: SizedBox.shrink());
      }
      return Expanded(
        child: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () => _onItemTapped(index),
            child: Column(
              children: [
                isActive
                    ? Lottie.asset(activeIcon,
                        width: 24, height: 24, repeat: false, fit: BoxFit.cover)
                    : SvgPicture.asset(
                        inActiveIcon,
                        width: 24,
                        height: 24,
                      ),
                Padding(
                    padding: EdgeInsets.only(top: 4),
                    child: Text(label,
                        style: TextStyle(
                          fontFamily: 'Nexa',
                          fontSize: 10,
                          fontWeight: FontWeight.w800,
                          height: 1.2,
                          textBaseline: TextBaseline.alphabetic,
                          decorationThickness: 1.0,
                          color: isActive ? Colors.black : Colors.grey,
                        )))
              ],
            )),
      );
    });
  }

  void _onItemTapped(int index) {
    HapticFeedback.lightImpact();
    pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Header(page: "Dashboard"),
              Expanded(
                    child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                    _selectedIndex = index;
                    });
                  },
                  // physics: NeverScrollableScrollPhysics(), // Disable horizontal scroll
                  clipBehavior: Clip.antiAlias,
                  children: const <Widget>[
                    Home(),
                  Portfolio(),
                  Discover(),
                  Market(),
                  Refer(),
                ],
              )),
            ],
          ),
          Positioned(
              width: MediaQuery.of(context).size.width,
              bottom: 0,
              left: 0,
              child: ClipPath(
                clipBehavior: Clip.antiAlias,
                clipper: CenterClipper(),
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.only(top: 16, bottom: 16),
                  child: Row(children: _buildBottomNavigationBarItems()),
                ),
              ))
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () => _onItemTapped(2),
        child: Container(
          width: 56,
          height: 56,
          margin: const EdgeInsets.only(bottom: 40),
          decoration: BoxDecoration(
            color: _selectedIndex == 2 ? Color(0xFFAFE50E) : Colors.white,
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(28),
          ),
          child: Center(
            child: _selectedIndex == 2
                ? Lottie.asset('assets/lottie/Dark_Discover.json',
                    width: 28, height: 28, repeat: false, fit: BoxFit.cover)
                : SvgPicture.asset(
                    'assets/svg/lemonn-discover.svg',
                    width: 23,
                    height: 27,
                    fit: BoxFit.cover,
                  ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

class CenterClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final double curveHeight = 40.0;
    final double curveWidth = 140.0;

    path.lineTo((size.width / 2) - curveWidth / 2, 0);
    path.cubicTo(
      (size.width / 2) - curveWidth / 4,
      0,
      (size.width / 2) - curveWidth / 4,
      curveHeight,
      size.width / 2,
      curveHeight,
    );
    path.cubicTo(
      (size.width / 2) + curveWidth / 4,
      curveHeight,
      (size.width / 2) + curveWidth / 4,
      0,
      (size.width / 2) + curveWidth / 2,
      0,
    );
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
