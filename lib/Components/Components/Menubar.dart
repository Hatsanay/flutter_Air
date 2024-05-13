import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constans.dart';
import '../Page/HistoryPage.dart';
import '../Page/HomePage.dart';
import '../Page/ProfilePage.dart';

class Menubar extends StatefulWidget {
  const Menubar({super.key});

  @override
  State<Menubar> createState() => _MenubarState();
}

class _MenubarState extends State<Menubar> {
  var titleS = "";
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    historyPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: const Text('หน้าแรก'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add_alert),
            // tooltip: 'Show Snackbar',
            onPressed: () {
              Navigator.push(
                  context,
                  PageRouteBuilder<void>(
                    opaque: false,
                    pageBuilder: (BuildContext context, _, __) {
                      return Scaffold(
                        appBar: AppBar(
                          title: Text('notification'.tr),
                        ),
                        body: Center(
                          child: Text(
                            'noNotifications'.tr,
                            style: const TextStyle(fontSize: 24),
                          ),
                        ),
                      );
                    },
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      const begin = Offset(0.0, 3.0);
                      const end = Offset.zero;
                      const curve = Curves.ease;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));

                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    },
                  ));
            },
          ),
        ],
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: 'home'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.history),
            label: 'history'.tr,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'profile'.tr,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: kPrimaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
