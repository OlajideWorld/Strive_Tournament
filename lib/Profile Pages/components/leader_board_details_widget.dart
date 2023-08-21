import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/sizes.dart';
import 'package:flutter/material.dart';

leaderBottomWidget(BuildContext context, bool isloss, String image, String text,
    String value, String increase) {
  final width = MediaQuery.of(context).size.width;
  return SizedBox(
    width: width,
    height: heightSize(72),
    child: Row(children: [
      Padding(
        padding: EdgeInsets.only(top: heightSize(10)),
        child: SizedBox(
          width: widthSize(18),
          child: Column(
            children: [
              Icon(
                Icons.arrow_drop_up,
                size: heightSize(16),
                color: isloss == true
                    ? const Color(0xFFFE4655)
                    : const Color(0xFF3FA43D),
              ),
              Text(
                increase,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: fontSize(14),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              )
            ],
          ),
        ),
      ),
      SizedBox(width: widthSize(8)),
      Container(
        height: heightSize(72),
        width: widthSize(317),
        padding: EdgeInsets.symmetric(
            vertical: heightSize(10), horizontal: widthSize(8)),
        decoration: ShapeDecoration(
          color: const Color(0xFFF4F4F4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(70),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x3FDDD4D4),
              blurRadius: 20,
              offset: Offset(0, 4),
              spreadRadius: 0,
            )
          ],
        ),
        child: Row(children: [
          Container(
            width: widthSize(52),
            height: heightSize(52),
            padding: EdgeInsets.symmetric(
                vertical: heightSize(12), horizontal: widthSize(13)),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(94),
              ),
            ),
            child: Image.asset(image),
          ),
          SizedBox(width: widthSize(12)),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize(12),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize(14),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                  height: 1.40,
                ),
              )
            ],
          )
        ]),
      )
    ]),
  );
}
