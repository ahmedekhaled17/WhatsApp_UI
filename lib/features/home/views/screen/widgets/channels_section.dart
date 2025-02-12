import 'package:flutter/material.dart';

class ChannelsSection extends StatelessWidget {
  const ChannelsSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> channels = [
      {"name": "UEFA Champions League", "subtitle": "Opening night 🍿", "time": "1:08 AM"},
      {"name": "Jobs in Egypt", "subtitle": "DevOps Engineer Intern", "time": "Yesterday"},
      {"name": "Pro Devers", "subtitle": "Udemy Course", "time": "Yesterday"},
      {"name": "UEFA Champions League", "subtitle": "Opening night 🍿", "time": "1:08 AM"},
      {"name": "Jobs in Egypt", "subtitle": "DevOps Engineer Intern", "time": "Yesterday"},
      {"name": "Pro Devers", "subtitle": "Udemy Course", "time": "Yesterday"},
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("القنوات", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white)),
              Text("Explore >", style: TextStyle(fontSize: 14, color: Colors.green)),
            ],
          ),
        ),
        const SizedBox(height: 10),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: channels.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage("assets/flutter-banner.png"),
            ),
              title: Text(channels[index]['name']!, style: const TextStyle(fontSize: 16)),
              subtitle: Text(channels[index]['subtitle']!, style: const TextStyle(color: Colors.white)),
              trailing: Text(channels[index]['time']!, style: const TextStyle(color: Colors.white, fontSize: 12)),

            );

          },
        ),
      ],
    );
  }
}
