import 'package:artelio/common/textstyle.dart';
import 'package:flutter/material.dart';
import '../utils/sizes.dart';

buttonWidget(BuildContext context, String text, VoidCallback onTap,
    Color color1, Color color2) {
  final width = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: heightSize(63),
      width: width,
      decoration: BoxDecoration(
        color: color1,
        borderRadius: BorderRadius.all(Radius.circular(widthSize(16))),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: color2,
            fontWeight: FontWeight.w800,
            fontSize: fontSize(20),
            fontFamily: UsedFonts().familyAkira),
      )),
    ),
  );
}
