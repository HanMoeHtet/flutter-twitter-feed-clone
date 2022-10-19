import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  var activeIndex = 0;

  Widget _getCurrentScreen() {
    switch (activeIndex) {
      case 0:
        return const HomeScreen();
      default:
        return const Center(child: Text("Not implemented yet"));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _getCurrentScreen(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            label: "Messages",
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: activeIndex,
        onTap: (value) {
          setState(() {
            activeIndex = value;
          });
        },
      ),
    );
  }
}
