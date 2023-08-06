import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

imageFrames(conatext) {
  return Container(
    height: heightSize(58),
    width: widthSize(58),
    padding: EdgeInsets.all(widthSize(6)),
    decoration: ShapeDecoration(
      color: Colors.white.withOpacity(0.20000000298023224),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(29),
      ),
    ),
    child: Container(
      width: widthSize(46),
      height: heightSize(46),
      decoration: const ShapeDecoration(
        color: Color(0xFFCBCAB2),
        shape: OvalBorder(),
        image: DecorationImage(
            image: AssetImage("assets/images/avatarimage6.png"),
            fit: BoxFit.fill),
      ),
    ),
  );
}

searchBarFrame(context) {
  return Container(
    height: heightSize(58),
    padding: EdgeInsets.symmetric(
        horizontal: widthSize(10), vertical: heightSize(17)),
    decoration: ShapeDecoration(
      color: Colors.white.withOpacity(0.20000000298023224),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(29),
      ),
    ),
    child: Row(children: [
      Icon(Icons.location_on, size: heightSize(24), color: mainColor),
      SizedBox(width: widthSize(8)),
      Text(
        "Surakarta, Ind",
        style: TextStyle(
            fontSize: fontSize(14),
            fontFamily: UsedFonts().familyModernist,
            color: mainBlack,
            fontWeight: FontWeight.w400),
      ),
      SizedBox(width: widthSize(25)),
      SizedBox(
        child: SvgPicture.asset("assets/images/dropdownIcon.svg"),
      )
    ]),
  );
}

iconFrame(context, String image) {
  return Container(
    height: heightSize(58),
    width: widthSize(58),
    padding: EdgeInsets.all(widthSize(17)),
    decoration: ShapeDecoration(
      color: mainColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(29),
      ),
    ),
    child: SizedBox(
        height: heightSize(24),
        width: widthSize(24),
        child: SvgPicture.asset(
          image,
          fit: BoxFit.fitHeight,
        )),
  );
}
