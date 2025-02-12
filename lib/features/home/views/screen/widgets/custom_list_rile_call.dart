// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:thrid_project/core/text_style.dart';
import '../../../model/call_model.dart';

class CustomListTileCall extends StatelessWidget {
  const CustomListTileCall({
    Key? key,
    required this.callModel,
  }) : super(key: key);

  final CallModel callModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          radius: 40,
          backgroundImage: AssetImage(callModel.image),
        ),
        title: Text(
          callModel.title,
          style: AppStyle.w,
        ),
        subtitle: Text(callModel.subTitle,
            style: AppStyle.w.copyWith(fontSize: 16, color: Colors.grey)),
        trailing: Icon(
          color: Colors.white,
          callModel.iconData,

        ),
      ),
    );
  }
}
