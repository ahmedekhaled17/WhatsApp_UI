import 'package:flutter/material.dart';
import 'package:thrid_project/features/home/views/screen/home_screen.dart';

import 'features/home/views/screen/call_screen.dart';
import 'features/home/views/screen/status_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CallScreen(),
    );
  }
}
