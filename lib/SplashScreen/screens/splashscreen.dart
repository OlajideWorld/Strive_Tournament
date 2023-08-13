import 'package:artelio/SIgn-in%20page/screens/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:slider_button/slider_button.dart';
import '../../routes/routes.dart';
import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
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
              opacity: 0.3,
              child: SizedBox(
                height: heightSize(542),
                child: Image.asset("assets/images/album1.png"),
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
                        Get.to(() => const SignInScreen());
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
                        child: Icon(Icons.double_arrow_sharp, color: mainColor),
                      ),

                      ///Change All the color and size from here.
                      height: heightSize(64),
                      width: widthSize(288),
                      buttonSize: heightSize(56),
                      radius: widthSize(34),
                      buttonColor: mainBlack,
                      backgroundColor: mainColor,
                      highlightedColor: Colors.white,
                      baseColor: mainColor,
                    )
                  ],
                ),
              ))
        ]),
      );
    });
  }
}
