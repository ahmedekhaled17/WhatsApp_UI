import 'package:flutter/material.dart';

class StatusSection extends StatelessWidget {
  const StatusSection({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> statusNames = ["Mahmoud ", " Khaled ", "Ahmed","Ali"];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Text("الحاله", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.white)),
        ),
        const SizedBox(height: 10),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: statusNames.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return _buildAddStatus();
              }
              return _buildStatusItem(statusNames[index - 1]);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAddStatus() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.add, size: 30, color: Colors.green),
          ),
          const SizedBox(height: 5),
          const Text("Add Status", style: TextStyle(fontSize: 12, color: Colors.grey,fontWeight:FontWeight.bold)),
        ],
      ),
    );
  }

  Widget _buildStatusItem(String name) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.green, width: 2),
              image: const DecorationImage(
                image: AssetImage("assets/df566ea2471c54fc1a32952472e796fa.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(name, style: const TextStyle(fontSize: 12, color: Colors.grey)),
        ],
      ),
    );
  }
}
