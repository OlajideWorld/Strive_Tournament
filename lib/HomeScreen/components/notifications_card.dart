import 'package:artelio/HomeScreen/controller/homecontroller.dart';
import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:artelio/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

final HomeController controller = HomeController.instance;

notificationCard(BuildContext context, String image, String text, String active,
    String time) {
  final width = MediaQuery.of(context).size.width;
  return Container(
    height: heightSize(92),
    width: width,
    padding: EdgeInsets.symmetric(vertical: heightSize(16)),
    child: Row(children: [
      Container(
        width: widthSize(60),
        height: heightSize(60),
        decoration: const ShapeDecoration(
          shape: OvalBorder(),
        ),
        child: Image.asset(image),
      ),
      SizedBox(width: widthSize(24)),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: heightSize(25),
            width: widthSize(250),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: fontSize(18),
                fontFamily: UsedFonts().familyModernist,
                fontWeight: FontWeight.w400,
                overflow: TextOverflow.ellipsis,
                height: 1.40,
              ),
            ),
          ),
          SizedBox(
            child: Row(children: [
              Text(
                active,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize(14),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                  height: 1.40,
                ),
              ),
              SizedBox(width: widthSize(8.8)),
              Text(
                time,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontSize(14),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                  height: 1.40,
                ),
              )
            ]),
          )
        ],
      )
    ]),
  );
}

notificationCard2(
    BuildContext context, String image, String text, String time) {
  final width = MediaQuery.of(context).size.width;
  return Container(
    height: heightSize(113),
    width: width,
    padding: EdgeInsets.symmetric(vertical: heightSize(16)),
    child: Row(children: [
      Container(
        width: widthSize(60),
        height: heightSize(60),
        decoration: const ShapeDecoration(
          shape: OvalBorder(),
        ),
        child: Image.asset(image),
      ),
      SizedBox(width: widthSize(24)),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize(18),
              fontFamily: UsedFonts().familyModernist,
              fontWeight: FontWeight.w400,
              height: 1.40,
            ),
          ),
          Text(
            time,
            style: TextStyle(
              color: Colors.black,
              fontSize: fontSize(14),
              fontFamily: UsedFonts().familyModernist,
              fontWeight: FontWeight.w400,
              height: 1.40,
            ),
          ),
          SizedBox(width: widthSize(12)),
          Text(
            'Reedem',
            style: TextStyle(
              color: mainColor,
              fontSize: fontSize(14),
              fontFamily: UsedFonts().familyModernist,
              fontWeight: FontWeight.w400,
              height: 1.40,
            ),
          )
        ],
      )
    ]),
  );
}

switchView() {
  return SizedBox(
    child: Obx(
      () => Row(children: [
        GestureDetector(
          onTap: () {
            controller.isSelected.value = true;
          },
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: heightSize(11), horizontal: widthSize(25)),
            height: heightSize(38),
            decoration: ShapeDecoration(
              color: controller.isSelected.value == true
                  ? mainColor
                  : const Color(0xFFF4F4F4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "General",
              style: TextStyle(
                color: controller.isSelected.value == true
                    ? const Color(0xFFF9F9F9)
                    : mainBlack,
                fontSize: fontSize(14),
                fontFamily: UsedFonts().familyAkira,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
        SizedBox(width: widthSize(8)),
        GestureDetector(
          onTap: () {
            controller.isSelected.value = false;
          },
          child: Container(
            padding: EdgeInsets.symmetric(
                vertical: heightSize(11), horizontal: widthSize(25)),
            height: heightSize(38),
            decoration: ShapeDecoration(
              color: controller.isSelected.value == false
                  ? mainColor
                  : const Color(0xFFF4F4F4),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              "REWARD",
              style: TextStyle(
                color: controller.isSelected.value == false
                    ? const Color(0xFFF9F9F9)
                    : mainBlack,
                fontSize: fontSize(14),
                fontFamily: UsedFonts().familyAkira,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ),
      ]),
    ),
  );
}
