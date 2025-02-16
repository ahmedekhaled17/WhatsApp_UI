import 'package:flutter/material.dart';
import 'package:thrid_project/features/calls/view/screens/call_screen.dart';
import 'package:thrid_project/features/home/views/screen/home_screen.dart';
import 'package:thrid_project/features/status/view/screens/status_screen.dart';
import 'package:thrid_project/features/home/views/widgets/BottomNav.dart';
import 'package:thrid_project/features/home/views/widgets/app_bar_home.dart';

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  int _currentIndex = 0;
  List<Widget> screens = [
    const HomeView(),
    const StatusScreen(),
    const CallScreen(),
  ];
  List<String> titles = [
    'واتساب',
    'الحالات',
    'المكالمات',
  ];
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: BottomNav(
          onTap: (value) {
            setState(() {
              _currentIndex = value;
            });
          },
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.tealAccent,
          child: const Icon(Icons.add),
        ),
        backgroundColor: Colors.black,
        appBar: appbarHome(title: titles[_currentIndex]),
        body: screens[_currentIndex],
      ),
    );
  }
}
