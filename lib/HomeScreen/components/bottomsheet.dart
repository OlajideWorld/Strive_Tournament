import 'package:artelio/HomeScreen/screens/searchScreen.dart';
import 'package:artelio/HomeScreen/screens/tournament_description.dart';
import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:artelio/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

showButtomSheetIcons(BuildContext context) {
  final height = MediaQuery.of(context).size.height;
  final width = MediaQuery.of(context).size.width;
  return showModalBottomSheet(
      isDismissible: true,
      backgroundColor: mainBlack,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return Container(
          height: height * 0.68,
          width: width,
          decoration: BoxDecoration(
              color: Color.fromARGB(31, 97, 96, 96),
              borderRadius: const BorderRadius.all(Radius.circular(32)),
              border: Border.all(color: Color(0xFF3E3E3E), width: 10)),
          child: Column(
            children: [
              SizedBox(
                height: heightSize(523),
                width: widthSize(347),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const TournamentDescriptionPage());
                          },
                          child:
                              iconCards("assets/images/gamelogo2.png", false),
                        ),
                        GestureDetector(
                          onTap: () {
                            Get.to(() => const TournamentDescriptionPage());
                          },
                          child:
                              iconCards("assets/images/gamelogo3.png", false),
                        ),
                        iconCards("assets/images/gamelogo4.png", false),
                        iconCards("assets/images/gamelogo5.png", false)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconCards("assets/images/gamelogo10.png", false),
                        iconCards("assets/images/gamelogo6.svg", true),
                        iconCards("assets/images/gamelogo7.svg", true),
                        iconCards("assets/images/gamelogo8.svg", true)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconCards("assets/images/gamelogo9.svg", true),
                        iconCards("assets/images/gamelogo11.png", false),
                        iconCards("assets/images/gamelogo12.png", false),
                        iconCards("assets/images/gamelogo13.png", false)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconCards("assets/images/gamelogo14.png", false),
                        iconCards("assets/images/gamelogo16.png", false),
                        iconCards("assets/images/gamelogo16.png", false),
                        iconCards("assets/images/gamelogo13.png", false)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconCards("assets/images/gamelogo14.png", false),
                        iconCards("assets/images/gamelogo16.png", false),
                        iconCards("assets/images/gamelogo16.png", false),
                        iconCards("assets/images/gamelogo13.png", false)
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        iconCards("assets/images/gamelogo14.png", false),
                        iconCards("assets/images/gamelogo16.png", false),
                        iconCards("assets/images/gamelogo16.png", false),
                        iconCards("assets/images/gamelogo13.png", false)
                      ],
                    )
                  ]),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => HomeSearchScreen());
                },
                child: Container(
                  height: heightSize(59),
                  width: widthSize(347),
                  padding: EdgeInsets.only(
                      top: heightSize(15),
                      left: widthSize(40),
                      right: widthSize(17),
                      bottom: heightSize(16)),
                  decoration: ShapeDecoration(
                    color: Color(0xFF292929),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                  ),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'All Game',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: fontSize(20),
                            fontFamily: UsedFonts().familyModernist,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(
                          Icons.cancel_sharp,
                          color: Colors.white,
                          size: heightSize(24),
                        )
                      ]),
                ),
              )
            ],
          ),
        );
      });
}

iconCards(String image, bool svg) {
  return Container(
      height: heightSize(84),
      width: widthSize(84),
      decoration: const ShapeDecoration(
        shape: OvalBorder(),
      ),
      child: svg == true
          ? SvgPicture.asset(
              image,
              fit: BoxFit.contain,
            )
          : Image.asset(
              image,
              fit: BoxFit.contain,
            ));
}
