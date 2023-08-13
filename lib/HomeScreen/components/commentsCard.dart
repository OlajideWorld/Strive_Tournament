import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/sizes.dart';
import 'package:flutter/material.dart';

import '../../utils/colors.dart';

commentCards(BuildContext context, String image, String inputText) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return SizedBox(
    height: heightSize(140),
    width: width,
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: heightSize(16)),
      child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        SizedBox(
          height: heightSize(68),
          width: widthSize(68),
          child: Image.asset(
            image,
            fit: BoxFit.contain,
          ),
        ),
        SizedBox(width: widthSize(17)),
        SizedBox(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'Alexander graham bell',
              style: TextStyle(
                color: Colors.black,
                fontSize: fontSize(12),
                fontFamily: UsedFonts().familyModernist,
                fontWeight: FontWeight.w400,
              ),
            ),
            Expanded(
              child: SizedBox(
                width: widthSize(258),
                child: Text(
                  inputText,
                  style: TextStyle(
                    color: Color(0xFF3E3E3E),
                    fontSize: fontSize(16),
                    fontFamily: UsedFonts().familyModernist,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: heightSize(4)),
            Text(
              'Reply',
              style: TextStyle(
                color: mainColor,
                fontSize: fontSize(12),
                fontFamily: UsedFonts().familyModernist,
                fontWeight: FontWeight.w400,
                // height: 1.40,
              ),
            ),
          ]),
        )
      ]),
    ),
  );
}
