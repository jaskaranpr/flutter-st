import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

  void _onItemTapped(int index) {
    HapticFeedback.lightImpact();
    setState(() {
      _selectedIndex = index;
      pageController.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom Navigation Bar'),
        centerTitle: true,
      ),
      body: PageView(
        controller: pageController,
        onPageChanged: (index) {
          if (index == 2) {
            return;
          }
          setState(() {
            _selectedIndex = index;
          });
        },
        clipBehavior: Clip.antiAlias,
        children: const <Widget>[
          Home(),
          Center(
            child: Home(),
          ),
          Center(
            child: Home(),
          ),
          Center(
            child: Home(),
          ),
          Center(
            child: Home(),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () => _onItemTapped(2),
        child: Container(
          width: 56,
          height: 56,
          decoration: BoxDecoration(
            color: _selectedIndex == 2 ? Color(0xFFAFE50E) : Colors.white,
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(
                28), // 100% border radius for circular shape
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
      bottomNavigationBar: Stack(children: [
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          height: 92,
          child: Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: const Color.fromARGB(70, 32, 255, 3),
                  spreadRadius: 10,
                  blurRadius: 10,
                  offset: Offset(0, 0), // changes position of shadow
                ),
              ],
            ),
            child: ClipPath(
              clipBehavior: Clip.antiAlias,
              clipper: CenterClipper(),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: BottomNavigationBar(
                    type: BottomNavigationBarType.fixed,
                    currentIndex: _selectedIndex,
                    selectedItemColor: Colors.blue,
                    unselectedItemColor: Colors.grey,
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    selectedFontSize: 10,
                    selectedLabelStyle: const TextStyle(
                      fontFamily: 'Nexa',
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      height: 1.2,
                      textBaseline: TextBaseline.alphabetic,
                      decorationThickness: 1.0,
                      decorationColor: Colors.blue,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontFamily: 'Nexa',
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      height: 1.2,
                      textBaseline: TextBaseline.alphabetic,
                      decorationThickness: 1.0,
                      decorationColor: Colors.grey,
                    ),
                    items: [
                      BottomNavigationBarItem(
                        icon: _selectedIndex == 0
                            ? Lottie.asset('assets/lottie/Dark_Home.json',
                                width: 24,
                                height: 24,
                                repeat: false,
                                fit: BoxFit.cover)
                            : SvgPicture.asset(
                                'assets/svg/lemonn-home.svg',
                                width: 24,
                                height: 24,
                              ),
                        label: 'Home',
                      ),
                      BottomNavigationBarItem(
                        icon: _selectedIndex == 1
                            ? Lottie.asset('assets/lottie/Dark_Portfolio.json',
                                width: 24,
                                height: 24,
                                repeat: false,
                                fit: BoxFit.cover)
                            : SvgPicture.asset(
                                'assets/svg/lemonn-portfolio.svg',
                                width: 24,
                                height: 24,
                              ),
                        label: 'Portfolio',
                      ),
                      BottomNavigationBarItem(
                        icon: SizedBox.shrink(),
                        label: '',
                      ),
                      BottomNavigationBarItem(
                        icon: _selectedIndex == 3
                            ? Lottie.asset('assets/lottie/Dark_Market.json',
                                width: 24,
                                height: 24,
                                repeat: false,
                                fit: BoxFit.cover)
                            : SvgPicture.asset(
                                'assets/svg/lemonn-market.svg',
                                width: 24,
                                height: 24,
                              ),
                        label: 'Market',
                      ),
                      BottomNavigationBarItem(
                        icon: _selectedIndex == 4
                            ? Lottie.asset('assets/lottie/Dark_Refer.json',
                                width: 24,
                                height: 24,
                                repeat: false,
                                fit: BoxFit.cover)
                            : SvgPicture.asset(
                                'assets/svg/lemonn-refer.svg',
                                width: 24,
                                height: 24,
                              ),
                        label: 'Refer',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Container(
          height: 82,
          child: Positioned.fill(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onItemTapped(0),
                    child: Container(
                      color: const Color.fromARGB(41, 231, 15, 0),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onItemTapped(1),
                    child: Container(
                      color: const Color.fromARGB(41, 231, 15, 0),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onItemTapped(2),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ), // Empty space for the FAB
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onItemTapped(3),
                    child: Container(
                      color: const Color.fromARGB(41, 231, 15, 0),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () => _onItemTapped(4),
                    child: Container(
                      color: const Color.fromARGB(41, 231, 15, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Text('Home'),
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
