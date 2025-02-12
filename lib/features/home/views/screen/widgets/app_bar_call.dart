import 'package:flutter/material.dart';
import 'package:thrid_project/core/text_style.dart';
import 'package:thrid_project/core/widgets/pop_menu_item.dart';

AppBar AppBarCall = AppBar(
    backgroundColor: Colors.black,
    leadingWidth: double.infinity,
    leading: const Padding(
      padding: EdgeInsets.only(right: 10),
      child: Text("مكالمات ", style: AppStyle.w),
    ),
    actions: [
      Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.white,
          ),
          PopupMenuButton(
            color: Colors.grey[600],
            iconColor: Colors.white,
            itemBuilder: (context) {
              return [
                popupMenuItemWidget(text: "الضبط"),
                popupMenuItemWidget(text: "الضبط"),
                popupMenuItemWidget(text: "الضبط"),
              ];
            },
          )
        ],
      )
    ]);
