import 'package:artelio/HomeScreen/components/bottomsheet.dart';
import 'package:artelio/HomeScreen/controller/homecontroller.dart';
import 'package:artelio/HomeScreen/screens/commentArticle.dart';
import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/sizes.dart';
import '../screens/cardScreen.dart';

cardButtons(BuildContext context) {
  final HomeController controller = HomeController.instance;
  return SizedBox(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        GestureDetector(
          onTap: () {
            controller.cardController.undo();
          },
          child: Container(
            height: heightSize(58),
            width: widthSize(58),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              ),
            ),
            child: const Icon(
              Icons.refresh,
              color: Colors.black,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            controller.cardController.swipeLeft();
          },
          child: Container(
            height: heightSize(58),
            width: widthSize(58),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              ),
            ),
            child: const Icon(
              Icons.cancel,
              color: Colors.black,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.to(() =>
                const CardScreenWidegt(image: "assets/images/album2.png"));
          },
          child: Container(
            height: heightSize(58),
            width: widthSize(58),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              ),
            ),
            child: const Icon(
              Icons.done,
              color: Colors.black,
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            controller.cardController.swipeRight();
          },
          child: Container(
            height: heightSize(58),
            width: widthSize(58),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(29),
              ),
            ),
            child: const Icon(
              Icons.arrow_forward_ios_sharp,
              color: Colors.black,
            ),
          ),
        )
      ],
    ),
  );
}

homeButtons(BuildContext context) {
  return Container(
    height: heightSize(68),
    width: widthSize(280),
    padding: EdgeInsets.all(5),
    decoration: ShapeDecoration(
      color: mainBlack,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(34),
      ),
    ),
    child: Row(children: [
      Container(
        height: heightSize(56),
        width: widthSize(165),
        padding: EdgeInsets.symmetric(
            vertical: heightSize(14), horizontal: widthSize(18)),
        decoration: ShapeDecoration(
          color: Color(0xFF292929),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32),
          ),
        ),
        child: GestureDetector(
          onTap: () {
            showButtomSheetIcons(context);
          },
          child: Row(children: [
            Text(
              "All Game",
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSize(20),
                fontFamily: UsedFonts().familyModernist,
                fontWeight: FontWeight.w400,
                height: 1.40,
              ),
            ),
            Icon(
              Icons.menu,
              size: heightSize(24),
              color: textColor,
            )
          ]),
        ),
      ),
      Container(
        height: heightSize(56),
        width: widthSize(103),
        decoration: ShapeDecoration(
          color: Color(0xFF292929),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: Row(children: [
          Container(
              height: heightSize(48),
              width: widthSize(48),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(29),
                ),
              ),
              child: SvgPicture.asset(
                "assets/images/trophy.svg",
                fit: BoxFit.contain,
              )),
          GestureDetector(
            onTap: () {
              Get.to(() => const CommentArticleScreen());
            },
            child: Container(
                height: heightSize(48),
                width: widthSize(46),
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(32),
                  ),
                ),
                child: SvgPicture.asset(
                  "assets/images/Article.svg",
                  fit: BoxFit.contain,
                )),
          ),
        ]),
      )
    ]),
  );
}
