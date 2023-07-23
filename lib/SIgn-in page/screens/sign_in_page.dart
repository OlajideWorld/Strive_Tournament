import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strive/common/buttons.dart';
import 'package:strive/common/textField.dart';
import 'package:strive/common/textstyle.dart';

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
                      top: heightSize(316),
                    ),
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
                                offset: Offset(0, 1))
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
                              color: textColor,
                              fontSize: fontSize(20),
                              fontFamily: UsedFonts().familyAkira,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                          SizedBox(height: heightSize(4)),
                          Text(
                            "Please enter your email address and password",
                            style: TextStyle(
                                color: descriptionColor,
                                fontFamily: UsedFonts().familyModernist,
                                fontWeight: FontWeight.w400,
                                fontSize: fontSize(14)),
                          ),
                          SizedBox(height: heightSize(22)),
                          const InputTextField(
                            text: "Username",
                            hintText: "Enter your username",
                            obscureText: false,
                            password: false,
                            textInputAction: true,
                          ),
                          SizedBox(height: heightSize(8)),
                          const InputTextField(
                            text: "Password",
                            hintText: "*******",
                            obscureText: false,
                            password: false,
                            textInputAction: true,
                          ),
                          SizedBox(height: heightSize(32)),
                          buttonWidget(context, "Login"),
                          SizedBox(height: heightSize(12)),
                          SizedBox(
                            height: heightSize(50),
                            width: widthSize(343),
                            child: const Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Don’t have an account? ',
                                    style: TextStyle(
                                      color: Color(0xFFF4F4F4),
                                      fontSize: 16,
                                      fontFamily: 'Sk-Modernist',
                                      fontWeight: FontWeight.w400,
                                      height: 22.40,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Sign Up',
                                    style: TextStyle(
                                      color: buttonColor,
                                      fontSize: 16,
                                      fontFamily: 'Sk-Modernist',
                                      fontWeight: FontWeight.w400,
                                      height: 22.40,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.center,
                            ),
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
