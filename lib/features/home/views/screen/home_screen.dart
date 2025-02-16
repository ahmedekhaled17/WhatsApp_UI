import 'package:flutter/material.dart';
import 'package:thrid_project/features/home/model/home_model.dart';
import 'package:thrid_project/features/home/views/widgets/custom_widget_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<HomeModel> items = [
      HomeModel(
          title: "محمد صلاح",
          subTitle: "اخبارك ايه ؟",
          image: "assets/salah.jpg",
          data: "12:28"),
      HomeModel(
          title: "علي",
          subTitle: "اين انت ؟",
          image: "assets/images (3).jpeg",
          data: "12:28"),
      HomeModel(
          title: "خالد",
          subTitle: "اين تذهب",
          image: "assets/images (2).jpeg",
          data: "12:28"),
      HomeModel(
          title: "عمر",
          subTitle: "ماهي المحاضرات",
          image: "assets/images (1).jpeg",
          data: "12:28"),
      HomeModel(
          title: "رونالدو",
          subTitle: "سجلت هاتريك",
          image: "assets/df566ea2471c54fc1a32952472e796fa.jpg",
          data: "12:28"),
      HomeModel(
          title: "بنزيما",
          subTitle: "صاحب البالندور",
          image: "assets/dcc8e732b0151c13e60ad47b0d4a7645.jpg",
          data: "12:28"),
      HomeModel(
          title: "رونالدو",
          subTitle: "الافضل في العالم",
          image: "assets/a311f515ee23f8cca912022cb64d633f.jpg",
          data: "12:28"),
      HomeModel(
          title: "صلاح",
          subTitle: "الاسطوره",
          image: "assets/salah.jpg",
          data: "12:28"),
      HomeModel(
          title: "علي",
          subTitle: "انت فين",
          image: "assets/a311f515ee23f8cca912022cb64d633f.jpg",
          data: "12:28"),
      HomeModel(
          title: "كريستيانو",
          subTitle: "الهداف",
          image: "assets/df566ea2471c54fc1a32952472e796fa.jpg",
          data: "12:28"),
      HomeModel(
          title: "محمد",
          subTitle: "هداف الدوري",
          image: "assets/salah.jpg",
          data: "12:28"),
    ];
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return CustomListTile(homeModel: items[index]);
      },
    );
  }
}
