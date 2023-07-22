import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slider_button/slider_button.dart';

import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: mainBlack,
        body: Stack(children: [
          Positioned(
            bottom: heightSize(270),
            top: heightSize(0),
            left: widthSize(0),
            right: widthSize(0),
            child: Opacity(
              opacity: 0.55,
              child: SizedBox(
                height: heightSize(542),
                child: Image.asset("assets/images/onboardimage.png"),
              ),
            ),
          ),
          Positioned(
              top: height * 0.64,
              left: widthSize(0),
              right: widthSize(0),
              child: SizedBox(
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: widthSize(102), right: widthSize(102)),
                      child: SizedBox(
                        height: heightSize(32),
                        child:
                            SvgPicture.asset("assets/images/splashimage.svg"),
                      ),
                    ),
                    SizedBox(height: heightSize(16)),
                    SizedBox(
                      width: widthSize(287),
                      child: Text(
                        "Get a taste of what it's like to compete at the highest level with our online tournaments",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: descriptionColor,
                            fontFamily: UsedFonts().familyModernist,
                            fontSize: fontSize(16),
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                    SizedBox(height: heightSize(52)),
                    SliderButton(
                      action: () {
                        Get.toNamed("");
                      },

                      ///Put label over here
                      label: Text(
                        'GET STARTED',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontFamily: UsedFonts().familyAkira,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      icon: const Center(
                        child: Icon(Icons.double_arrow_sharp),
                      ),

                      ///Change All the color and size from here.
                      height: heightSize(64),
                      width: widthSize(288),
                      buttonSize: heightSize(56),
                      radius: widthSize(34),
                      buttonColor: mainWhite,
                      backgroundColor: buttonColor,
                      highlightedColor: Colors.white,
                      baseColor: Colors.red,
                    )
                  ],
                ),
              ))
        ]),
      );
    });
  }
}
