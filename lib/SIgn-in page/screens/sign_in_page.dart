import 'package:artelio/SIgn-in%20page/screens/sign_up_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../HomeScreen/screens/homeScreen.dart';
import '../../common/buttons.dart';
import '../../common/textField.dart';
import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          backgroundColor: mainBlack,
          body: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: height,
              width: width,
              child: Stack(fit: StackFit.expand, children: [
                Positioned(
                  bottom: heightSize(270),
                  child: Opacity(
                    opacity: 0.3,
                    child: SizedBox(
                      height: heightSize(710),
                      width: width,
                      child: Image.asset("assets/images/onboardimage2.png"),
                    ),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.only(
                        top: height * 0.42, bottom: heightSize(10)),
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: widthSize(16)),
                      decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.2),
                          border:
                              Border.all(color: Colors.black.withOpacity(0.2)),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.9),
                                blurRadius: 60,
                                offset: const Offset(0, 1))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: heightSize(32),
                            child: SvgPicture.asset(
                                "assets/images/splashimage.svg"),
                          ),
                          SizedBox(height: heightSize(24)),
                          Text(
                            "Welcome back!",
                            style: TextStyle(
                              color: mainColor,
                              fontSize: fontSize(20),
                              fontFamily: UsedFonts().familyAkira,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: heightSize(4)),
                          Text(
                            "Please enter your email address and password",
                            style: TextStyle(
                                color: mainColor,
                                fontFamily: UsedFonts().familyModernist,
                                fontWeight: FontWeight.w400,
                                fontSize: fontSize(14)),
                          ),
                          SizedBox(height: heightSize(22)),
                          const InputTextField(
                            differentiate: 1,
                            textColor: mainColor,
                            innerColor: Color(0xFF3E3E3E),
                            text: "Username",
                            hintText: "Enter your username",
                            obscureText: false,
                            password: false,
                            textInputAction: true,
                          ),
                          SizedBox(height: heightSize(8)),
                          const InputTextField(
                            differentiate: 1,
                            textColor: mainColor,
                            innerColor: Color(0xFF3E3E3E),
                            text: "Password",
                            hintText: "*******",
                            obscureText: true,
                            password: false,
                            textInputAction: true,
                          ),
                          SizedBox(height: heightSize(32)),
                          buttonWidget(context, "Login", () {
                            Get.to(() => HomeScreen());
                          }, mainColor, mainBlack),
                          SizedBox(height: heightSize(12)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Don’t have an account? ",
                                style: TextStyle(
                                    fontSize: fontSize(16),
                                    fontFamily: UsedFonts().familyModernist,
                                    fontWeight: FontWeight.w400,
                                    color: mainColor),
                              ),
                              GestureDetector(
                                onTap: () => Get.to(() => const SignUpScreen()),
                                child: Text(
                                  "Sign Up",
                                  style: TextStyle(
                                      color: buttonColor,
                                      fontSize: fontSize(16),
                                      fontWeight: FontWeight.w400,
                                      fontFamily: UsedFonts().familyModernist),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ))
              ]),
            ),
          ),
        );
      },
    );
  }
}
