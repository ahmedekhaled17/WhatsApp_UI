import 'package:flutter/material.dart';
import 'package:thrid_project/features/calls/view/screens/call_screen.dart';
import 'package:thrid_project/features/home/views/screen/main_scaffold.dart';
import 'package:thrid_project/features/status/view/screens/status_screen.dart';

class BottomNav extends StatefulWidget {
  final ValueChanged<int>? onTap;
  const BottomNav({super.key, this.onTap});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int selectedIndex = 0;
  List screens = [
    const MainScaffold(),
    const StatusScreen(),
    const CallScreen(),
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
            widget.onTap!(value);
            // screens[value];
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
