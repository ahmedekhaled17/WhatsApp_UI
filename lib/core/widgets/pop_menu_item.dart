import 'package:flutter/material.dart';
import 'package:thrid_project/core/text_style.dart';

PopupMenuItem popupMenuItemWidget({required String text}) {
  return PopupMenuItem(
      child: Container(
    alignment: Alignment.topRight,
    child: Text(
      text,
      style: AppStyle.w,
    ),
  ));
}
