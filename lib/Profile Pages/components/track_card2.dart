import 'package:artelio/Profile%20Pages/components/track_card.dart';
import 'package:flutter/material.dart';

import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

trackCard2(
  BuildContext context,
) {
  final width = MediaQuery.of(context).size.width;
  return Container(
    height: heightSize(285),
    width: width,
    padding: EdgeInsets.only(
        top: heightSize(16),
        left: widthSize(8),
        right: widthSize(8),
        bottom: heightSize(16)),
    decoration: ShapeDecoration(
      color: const Color(0xFFF9F9F9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
    ),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Row(
        children: [
          Container(
            width: widthSize(100),
            height: heightSize(100),
            padding: EdgeInsets.symmetric(
                vertical: heightSize(24), horizontal: widthSize(24)),
            decoration: ShapeDecoration(
              color: const Color(0xFFF4F4F4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: SizedBox(
              height: heightSize(52),
              width: widthSize(52),
              child: Image.asset(
                "assets/images/OGbull.png",
                fit: BoxFit.contain,
              ),
            ),
          ),
          SizedBox(width: widthSize(16)),
          Padding(
            padding: EdgeInsets.only(top: heightSize(14)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TEAM OG',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF212121),
                    fontSize: fontSize(20),
                    fontFamily: UsedFonts().familyAkira,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                textUsed("Rae", 14, const Color(0xFF212121)),
                textUsed("Member Team", 14, mainColor)
              ],
            ),
          )
        ],
      ),
      SizedBox(height: heightSize(16)),
      Text(
        'AWARD :',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: const Color(0xFF212121),
          fontSize: fontSize(18),
          fontFamily: UsedFonts().familyAkira,
          fontWeight: FontWeight.w800,
        ),
      ),
      SizedBox(width: heightSize(4)),
      textUsed("3rd CSGO World Championship 2020", 18, const Color(0xFF212121)),
      SizedBox(width: heightSize(4)),
      textUsed("1st CSGO Global Tournament 2020", 18, const Color(0xFF212121)),
      SizedBox(width: heightSize(4)),
      textUsed("2nd CSGO NA Tournament 2019", 18, const Color(0xFF212121)),
      SizedBox(width: heightSize(4)),
      textUsed("1st CSGO Asia Championship 2019", 18, const Color(0xFF212121)),
    ]),
  );
}
