import 'package:flutter/material.dart';
import 'package:thrid_project/features/home/views/widgets/custom_list_rile_call.dart';
import '../../../home/model/call_model.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  static List<CallModel> items = [
    CallModel(
        title: "محمد صلاح",
        subTitle: "اليوم 1:20",
        image: "assets/salah.jpg",
        iconData: Icons.call),
    CallModel(
        title: "علي",
        subTitle: "اليوم 12:45",
        image: "assets/images (3).jpeg",
        iconData: Icons.call),
    CallModel(
        title: "خالد",
        subTitle: "امس 11:27",
        image: "assets/images (2).jpeg",
        iconData: Icons.call),
    CallModel(
        title: "عمر",
        subTitle: "امس 11:15",
        image: "assets/images (1).jpeg",
        iconData: Icons.call),
    CallModel(
        title: "رونالدو",
        subTitle: "امس 11:10",
        image: "assets/df566ea2471c54fc1a32952472e796fa.jpg",
        iconData: Icons.call),
    CallModel(
        title: "بنزيما",
        subTitle: "امس 11:00",
        image: "assets/dcc8e732b0151c13e60ad47b0d4a7645.jpg",
        iconData: Icons.call),
    CallModel(
        title: "رونالدو",
        subTitle: "امس 10:11",
        image: "assets/a311f515ee23f8cca912022cb64d633f.jpg",
        iconData: Icons.call),
    CallModel(
        title: "صلاح",
        subTitle: "امس 10:5",
        image: "assets/salah.jpg",
        iconData: Icons.call),
    CallModel(
        title: "علي",
        subTitle: "امس 10:00",
        image: "assets/a311f515ee23f8cca912022cb64d633f.jpg",
        iconData: Icons.call),
    CallModel(
        title: "كريستيانو",
        subTitle: "امس 9:27",
        image: "assets/df566ea2471c54fc1a32952472e796fa.jpg",
        iconData: Icons.call),
    CallModel(
        title: "محمد",
        subTitle: "9:10",
        image: "assets/salah.jpg",
        iconData: Icons.call),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomListTileCall(callModel: items[index]);
      },
    );
  }
}
