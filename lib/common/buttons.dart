import 'package:flutter/material.dart';
import 'package:strive/common/textstyle.dart';
import 'package:strive/utils/sizes.dart';

import '../utils/colors.dart';

buttonWidget(BuildContext context, String text, VoidCallback onTap) {
  final width = MediaQuery.of(context).size.width;
  return GestureDetector(
    onTap: onTap,
    child: Container(
      height: heightSize(63),
      width: width,
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(widthSize(16))),
      ),
      child: Center(
          child: Text(
        text,
        style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w800,
            fontSize: fontSize(20),
            fontFamily: UsedFonts().familyAkira),
      )),
    ),
  );
}
