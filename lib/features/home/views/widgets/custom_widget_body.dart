// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:thrid_project/core/text_style.dart';
import 'package:thrid_project/features/home/model/home_model.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.homeModel,
  }) : super(key: key);

  final HomeModel homeModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(homeModel.image),
        ),
        title: Text(
          homeModel.title,
          style: AppStyle.w,
        ),
        subtitle: Text(homeModel.subTitle,
            style: AppStyle.w.copyWith(fontSize: 16, color: Colors.grey)),
        trailing: Text(
          homeModel.data,
          style: AppStyle.w.copyWith(fontSize: 16, color: Colors.grey[400]),
        ),
      ),
    );
  }
}
