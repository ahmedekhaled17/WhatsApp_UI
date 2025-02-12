import 'package:flutter/material.dart';
import 'package:thrid_project/features/home/views/screen/widgets/BottomNav.dart';
import 'package:thrid_project/features/home/views/screen/widgets/app_bar_update.dart';
import 'package:thrid_project/features/home/views/screen/widgets/channels_section.dart';
import 'package:thrid_project/features/home/views/screen/widgets/status_section.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const BottomNav(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.tealAccent,
          child: const Icon(Icons.add_a_photo),
        ),
        backgroundColor: Colors.black,
        appBar: AppBarUpdate,
        body: const SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 10),
              StatusSection(),
              SizedBox(height: 20),
              ChannelsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
