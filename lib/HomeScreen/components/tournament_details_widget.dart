import 'package:artelio/HomeScreen/controller/homecontroller.dart';
import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:artelio/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

final HomeController controller = HomeController.instance;

tournamentWidget(BuildContext context) {
  return SizedBox(
    child: Obx(
      () => Row(
        children: [
          GestureDetector(
            onTap: () {
              controller.isSelected.value = true;
            },
            child: Container(
              width: widthSize(114),
              height: heightSize(114),
              padding: EdgeInsets.only(top: heightSize(29)),
              decoration: ShapeDecoration(
                color: controller.isSelected.value == true
                    ? mainColor
                    : Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(94),
                ),
              ),
              child: SizedBox(
                height: heightSize(56),
                width: widthSize(36),
                child: Column(children: [
                  SizedBox(
                    height: heightSize(32),
                    width: widthSize(32),
                    child: SvgPicture.asset("assets/images/document.svg"),
                  ),
                  SizedBox(height: heightSize(4)),
                  Text(
                    "Details",
                    style: TextStyle(
                      color: controller.isSelected.value == true
                          ? Color(0xFFF9F9F9)
                          : mainBlack,
                      fontSize: fontSize(14),
                      fontFamily: UsedFonts().familyModernist,
                      fontWeight: FontWeight.w400,
                      height: 1.40,
                    ),
                  )
                ]),
              ),
            ),
          ),

          //
          GestureDetector(
            onTap: () {
              controller.isSelected.value = false;
            },
            child: Container(
              width: widthSize(114),
              height: heightSize(114),
              padding: EdgeInsets.only(top: heightSize(29)),
              decoration: ShapeDecoration(
                color: controller.isSelected.value == false
                    ? mainColor
                    : Color(0xFFF4F4F4),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(94),
                ),
              ),
              child: SizedBox(
                height: heightSize(56),
                width: widthSize(36),
                child: Column(children: [
                  SizedBox(
                    height: heightSize(32),
                    width: widthSize(32),
                    child: SvgPicture.asset("assets/images/Board.svg"),
                  ),
                  SizedBox(height: heightSize(4)),
                  Text(
                    "Rule",
                    style: TextStyle(
                      color: controller.isSelected.value == false
                          ? Colors.white
                          : mainBlack,
                      fontSize: fontSize(14),
                      fontFamily: UsedFonts().familyModernist,
                      fontWeight: FontWeight.w400,
                      height: 1.40,
                    ),
                  )
                ]),
              ),
            ),
          ),
          //
          Container(
            width: widthSize(114),
            height: heightSize(114),
            padding: EdgeInsets.only(top: heightSize(29)),
            decoration: ShapeDecoration(
              color: Color(0xFFF4F4F4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(94),
              ),
            ),
            child: SizedBox(
              height: heightSize(56),
              width: widthSize(36),
              child: Column(children: [
                SizedBox(
                  height: heightSize(32),
                  width: widthSize(32),
                  child: SvgPicture.asset("assets/images/bracket.svg"),
                ),
                SizedBox(height: heightSize(4)),
                Text(
                  "Bracket",
                  style: TextStyle(
                    color: mainBlack,
                    fontSize: fontSize(14),
                    fontFamily: UsedFonts().familyModernist,
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    ),
  );
}
