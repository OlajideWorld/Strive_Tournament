import "package:flutter/material.dart";
import "package:get/get.dart";
import "package:strive/common/buttons.dart";
import "package:strive/common/textstyle.dart";

import "../../common/textField.dart";
import "../../utils/colors.dart";
import "../../utils/sizes.dart";

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainBlack,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          height: height,
          width: width,
          child: Stack(
            fit: StackFit.expand,
            children: [
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
                    top: height * 0.40,
                    right: widthSize(8),
                    left: widthSize(8),
                    bottom: heightSize(10)),
                child: Container(
                  height: heightSize(517),
                  width: widthSize(359),
                  padding: EdgeInsets.only(
                      top: heightSize(16),
                      left: widthSize(8),
                      right: widthSize(8),
                      bottom: heightSize(24)),
                  decoration: ShapeDecoration(
                    color: mainWhite,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "CREATE ACCOUNT",
                          style: TextStyle(
                              fontSize: fontSize(24),
                              color: mainBlack,
                              fontFamily: UsedFonts().familyAkira,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(height: heightSize(16)),
                        const InputTextField(
                          textColor: Color(0xFF212121),
                          innerColor: backgroundSecondary,
                          text: "Username",
                          hintText: "Enter your username",
                          obscureText: false,
                          password: false,
                          textInputAction: true,
                        ),
                        SizedBox(height: heightSize(8)),
                        const InputTextField(
                          textColor: Color(0xFF212121),
                          innerColor: backgroundSecondary,
                          text: "Email",
                          hintText: "Enter your email",
                          obscureText: false,
                          password: false,
                          textInputAction: true,
                        ),
                        SizedBox(height: heightSize(8)),
                        const InputTextField(
                          textColor: Color(0xFF212121),
                          innerColor: backgroundSecondary,
                          text: "Password",
                          hintText: "*******",
                          obscureText: true,
                          password: false,
                          textInputAction: true,
                        ),
                        SizedBox(height: heightSize(32)),
                        buttonWidget(context, "SIGN UP"),
                        SizedBox(height: heightSize(12)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account? ",
                              style: TextStyle(
                                  fontSize: fontSize(16),
                                  fontFamily: UsedFonts().familyModernist,
                                  fontWeight: FontWeight.w400,
                                  color: mainBlack),
                            ),
                            GestureDetector(
                              onTap: () => Get.back(),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color: buttonColor,
                                    fontSize: fontSize(16),
                                    fontWeight: FontWeight.w400,
                                    fontFamily: UsedFonts().familyModernist),
                              ),
                            )
                          ],
                        )
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
