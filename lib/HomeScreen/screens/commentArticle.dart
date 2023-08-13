import 'package:artelio/HomeScreen/screens/cardScreen.dart';
import 'package:artelio/HomeScreen/screens/commentsScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../common/buttons.dart';
import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class CommentArticleScreen extends StatelessWidget {
  const CommentArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: mainBlack,
        body: Padding(
          padding: EdgeInsets.only(
              top: height * 0.05,
              left: widthSize(8),
              right: widthSize(8),
              bottom: heightSize(8)),
          child: Container(
            height: height,
            width: width,
            padding: EdgeInsets.symmetric(
                horizontal: widthSize(8), vertical: heightSize(8)),
            decoration: ShapeDecoration(
              color: mainColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SizedBox(
                      height: heightSize(68),
                      width: widthSize(68),
                      child: SvgPicture.asset("assets/images/backarrow.svg"),
                    ),
                  ),
                  SizedBox(
                    height: heightSize(68),
                    width: widthSize(68),
                    child: SvgPicture.asset("assets/images/bookmark.svg"),
                  )
                ],
              ),
              SizedBox(height: heightSize(16)),
              SizedBox(
                height: heightSize(300),
                width: width,
                child: Image.asset(
                  "assets/images/album1.png",
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: heightSize(7)),
              Text(
                "Though the fish123 roster previously played alongside Ardis ‘ardiis’ Svarenieks, another former CS:GO player, ScreaM took his spot on the lineup when the Latvian joined Mixwell and Co on G2 Esports.",
                style: TextStyle(
                  color: textColor,
                  fontSize: fontSize(20),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: heightSize(16)),
              Expanded(
                child: Text(
                  "Since the Belgian headshot machine himself joined fish123, they’ve had some stellar results, finishing 2nd at the WePlay! Invitational (where they lost to G2 in the final). Although they fell short at the most recent event, the Mandatory.GG Cup, bowing out in ",
                  style: TextStyle(
                    color: textColor,
                    fontSize: fontSize(20),
                    fontFamily: UsedFonts().familyModernist,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                GestureDetector(
                  onTap: () {
                    Get.to(() => const CommentsScreen());
                  },
                  child: SizedBox(
                    height: heightSize(80),
                    width: widthSize(80),
                    child: Image.asset(
                      "assets/images/message.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  height: heightSize(80),
                  width: widthSize(80),
                  child: Image.asset(
                    "assets/images/heart.png",
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SizedBox(
                  height: heightSize(80),
                  width: widthSize(80),
                  child: Image.asset(
                    "assets/images/arrow2.png",
                    fit: BoxFit.contain,
                  ),
                )
              ])
            ]),
          ),
        ));
  }
}
