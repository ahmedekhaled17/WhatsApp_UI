import 'package:flutter/material.dart';
import 'package:thrid_project/core/text_style.dart';

AppBar appBarUpdate = AppBar(
    backgroundColor: Colors.black,
    leadingWidth: double.infinity,
    leading: const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Text("التحديثات  ", style: AppStyle.w),
    ),
    actions: const [
      Row(
        children: [
          Icon(
            Icons.search,
            color: Colors.white,
          ),
          Icon(Icons.arrow_back_ios_rounded)
        ],
      )
    ]);
