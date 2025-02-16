import 'package:flutter/material.dart';
import 'package:thrid_project/features/home/views/widgets/channels_section.dart';
import 'package:thrid_project/features/home/views/widgets/status_section.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          StatusSection(),
          SizedBox(height: 20),
          ChannelsSection(),
        ],
      ),
    );
  }
}
