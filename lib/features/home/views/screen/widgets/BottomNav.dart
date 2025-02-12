import 'package:flutter/material.dart';
import 'package:thrid_project/features/home/views/screen/call_screen.dart';
import 'package:thrid_project/features/home/views/screen/home_screen.dart';
import 'package:thrid_project/features/home/views/screen/status_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 2;
  List screens = [
    HomeScreen(),
    StatusScreen(),
    CallScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: selectedIndex,
        backgroundColor: Colors.black,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.white,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.update_sharp), label: "status"),
          BottomNavigationBarItem(icon: Icon(Icons.add_call), label: "calls"),
        ]);
  }
}
