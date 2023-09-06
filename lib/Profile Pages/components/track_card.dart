import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:artelio/utils/sizes.dart';
import 'package:flutter/material.dart';

trackCard(
  BuildContext context,
) {
  final width = MediaQuery.of(context).size.width;
  return Container(
    height: heightSize(256),
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
                "assets/images/secret.png",
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
                  'TEAM SECRET',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xFF212121),
                    fontSize: fontSize(20),
                    fontFamily: UsedFonts().familyAkira,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                textUsed("LILBLACK", 14, const Color(0xFF212121)),
                textUsed("In game Leader", 14, mainColor)
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
      textUsed(
          "1st Valorant Championship South Asia", 18, const Color(0xFF212121)),
      SizedBox(width: heightSize(4)),
      textUsed("2nd Valorant Japan Tour", 18, const Color(0xFF212121)),
      SizedBox(width: heightSize(4)),
      textUsed(
          "1st Valorant World Championship 2022", 18, const Color(0xFF212121)),
    ]),
  );
}

textUsed(String text, double fosize, Color color) {
  return Text(
    text,
    textAlign: TextAlign.center,
    style: TextStyle(
      color: color,
      fontSize: fontSize(fosize),
      fontFamily: UsedFonts().familyModernist,
      fontWeight: FontWeight.w400,
      overflow: TextOverflow.ellipsis,
      height: 1.40,
    ),
  );
}
