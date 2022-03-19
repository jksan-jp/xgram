import 'package:flutter/material.dart';
import 'package:xgram/pages/account.dart';
import 'package:xgram/pages/home.dart';
import 'package:xgram/pages/reels.dart';
import 'package:xgram/pages/search.dart';
import 'package:xgram/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _navigateBottomNavBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _children = [
    const UserHome(),
    const UserSearch(),
    const UserReels(),
    const UserShop(),
    const UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _children[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _navigateBottomNavBar,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_call), label: 'reels'),
            BottomNavigationBarItem(icon: Icon(Icons.shop), label: 'shop'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'account')
          ],
        ));
  }
}
