// ignore_for_file: file_names

import 'package:artelio/HomeScreen/components/share_comment.dart';
import 'package:artelio/HomeScreen/controller/homecontroller.dart';

import 'package:artelio/HomeScreen/screens/commentsScreen.dart';
import 'package:artelio/common/textField.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../common/buttons.dart';
import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

final HomeController controller = HomeController.instance;

class CommentArticleScreen extends StatelessWidget {
  const CommentArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: mainBlack,
        resizeToAvoidBottomInset: false,
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
                GestureDetector(
                  onTap: () => saveArticle(context),
                  child: SizedBox(
                    height: heightSize(80),
                    width: widthSize(80),
                    child: Image.asset(
                      "assets/images/heart.png",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () => shareComment(context),
                  child: SizedBox(
                    height: heightSize(80),
                    width: widthSize(80),
                    child: Image.asset(
                      "assets/images/arrow2.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                )
              ])
            ]),
          ),
        ));
  }
}

saveArticle(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return SmartDialog.show(
      alignment: Alignment.topCenter,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: height * 0.05),
          child: Container(
            height: heightSize(428),
            width: width,
            padding: EdgeInsets.only(
                top: heightSize(16), left: widthSize(8), right: widthSize(8)),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'SAVE ARTICLE',
                style: TextStyle(
                  color: const Color(0xFF212121),
                  fontSize: fontSize(24),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: heightSize(16)),
              saveArticeContainerWidget(context, "assets/images/album1.png",
                  "Valorant article", mainColor, false),
              SizedBox(height: heightSize(8)),
              saveArticeContainerWidget(context, "assets/images/album2.png",
                  "Pubg article", backgroundSecondary, true),
              SizedBox(height: heightSize(8)),
              saveArticeContainerWidget(context, "assets/images/album3.png",
                  "Dota 2 article", backgroundSecondary, true),
              SizedBox(height: heightSize(16)),
              buttonWidget(context, "Done", () {
                saveArticleWidget2(context);
              }, mainColor, Colors.white),
              SizedBox(height: heightSize(16)),
              buttonWidget(context, "Create new collection", () {},
                  backgroundSecondary, Colors.black)
            ]),
          ),
        );
      });
}

saveArticleWidget2(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return SmartDialog.show(
      alignment: Alignment.topCenter,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: height * 0.05),
          child: Container(
            height: heightSize(314),
            width: width,
            padding: EdgeInsets.only(
                top: heightSize(16), left: widthSize(8), right: widthSize(8)),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'NEW COLLECTION',
                style: TextStyle(
                  color: const Color(0xFF212121),
                  fontSize: fontSize(24),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: heightSize(16)),
              const InputTextField(
                  obscureText: false,
                  text: "Name",
                  hintText: "Enter a name",
                  innerColor: backgroundSecondary,
                  textColor: descriptionColor,
                  differentiate: 1),
              buttonWidget(context, "Create", () {}, mainColor, Colors.white),
              SizedBox(height: heightSize(16)),
              buttonWidget(context, "Cancel", () {
                Get.back();
              }, backgroundSecondary, Colors.black)
            ]),
          ),
        );
      });
}

showNextDialog(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return SmartDialog.show(
      alignment: Alignment.topCenter,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: height * 0.05),
          child: Container(
            height: heightSize(428),
            width: width,
            padding: EdgeInsets.only(
                top: heightSize(16), left: widthSize(8), right: widthSize(8)),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'New collection',
                style: TextStyle(
                  color: const Color(0xFF212121),
                  fontSize: fontSize(24),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: heightSize(16)),
              SizedBox(
                height: heightSize(96),
                width: width,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: TextStyle(
                          color: Color(0xFF212121),
                          fontSize: fontSize(20),
                          fontFamily: UsedFonts().familyModernist,
                          fontWeight: FontWeight.w400,
                          height: 1.40,
                        ),
                      ),
                      SizedBox(height: heightSize(8)),
                    ]),
              ),
              buttonWidget(context, "Done", () {
                Get.back();
              }, mainColor, Colors.white),
              SizedBox(height: heightSize(16)),
              buttonWidget(context, "Create new collection", () {},
                  backgroundSecondary, Colors.black)
            ]),
          ),
        );
      });
}

saveArticeContainerWidget(BuildContext context, String image, String text,
    Color boxColor, bool changeColor) {
  final width = MediaQuery.of(context).size.width;
  return GestureDetector(
      onTap: () {},
      child: Container(
        height: heightSize(64),
        width: width,
        padding: const EdgeInsets.all(8),
        decoration: ShapeDecoration(
          color: boxColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Row(children: [
          SizedBox(
            height: heightSize(52.12),
            width: widthSize(52),
            child: Image.asset(
              image,
              fit: BoxFit.contain,
            ),
          ),
          SizedBox(width: widthSize(6)),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: changeColor == true ? Colors.black : Colors.white,
                  fontSize: fontSize(16),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                  height: 1.40,
                ),
              ),
              Text(
                '2 article',
                style: TextStyle(
                  color: changeColor == true ? Colors.black : Colors.white,
                  fontSize: fontSize(12),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                  height: 1.40,
                ),
              )
            ],
          )
        ]),
      ));
}
