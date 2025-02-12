import 'package:flutter/material.dart';
import 'package:thrid_project/features/home/model/home_model.dart';
import 'package:thrid_project/features/home/views/screen/widgets/BottomNav.dart';
import 'package:thrid_project/features/home/views/screen/widgets/app_bar_home.dart';
import 'package:thrid_project/features/home/views/screen/widgets/custom_widget_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static List<HomeModel> items = [
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

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        bottomNavigationBar: const BottomNav(),
        floatingActionButton: FloatingActionButton(onPressed: (){},
          backgroundColor: Colors.tealAccent,
          child: const Icon(Icons.add),),
          backgroundColor: Colors.black,
          appBar: AppBarHome,
          body: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return CustomListTile(homeModel: items[index]);
            },
          ),
      ),
    );
  }
}