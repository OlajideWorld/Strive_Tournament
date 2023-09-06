import 'package:artelio/HomeScreen/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../common/buttons.dart';
import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class VerifyNumberScreen extends StatelessWidget {
  const VerifyNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
          backgroundColor: mainColor,
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
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'VERIFY YOUR \nPHONE NUMBER',
                      style: TextStyle(
                        color: const Color(0xFF212121),
                        fontSize: fontSize(24),
                        fontFamily: UsedFonts().familyAkira,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: heightSize(16)),
                    Text(
                      'Enter your OTP code here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(height: heightSize(52)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: widthSize(50)),
                      child: PinCodeTextField(
                        appContext: context,
                        length: 4,
                        textStyle: TextStyle(
                            color: mainColor,
                            fontSize: fontSize(20),
                            fontWeight: FontWeight.w800,
                            fontFamily: UsedFonts().familyAkira),
                        backgroundColor: Colors.white,
                        keyboardType: TextInputType.number,
                        // onChanged: (value) {
                        //   setState(() {
                        //     controller.otp.value = value;
                        //   });
                        //   debugPrint(controller.otp.value);
                        // },
                        pinTheme: PinTheme(
                            shape: PinCodeFieldShape.box,
                            inactiveColor: backgroundSecondary,
                            borderRadius: BorderRadius.circular(8),
                            activeFillColor: mainColor,
                            fieldHeight: heightSize(50),
                            fieldWidth: widthSize(50),
                            selectedFillColor: mainColor,
                            activeColor: mainColor),
                      ),
                    ),
                    SizedBox(height: heightSize(52)),
                    Text(
                      'Didn’t receive code?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFFBEBEBE),
                        fontSize: fontSize(16),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(height: heightSize(4)),
                    Text(
                      'Resend new code',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: mainColor,
                        fontSize: fontSize(16),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    const Spacer(),
                    buttonWidget(context, "Continue", () {
                      paymentSuccess(context);
                    }, mainColor, backgroundSecondary)
                  ]),
            ),
          ));
    });
  }

  paymentSuccess(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return SmartDialog.show(
        alignment: Alignment.topCenter,
        builder: (context) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: height * 0.05),
            child: Container(
              height: heightSize(490),
              width: width,
              padding: EdgeInsets.only(
                  top: heightSize(16), left: widthSize(8), right: widthSize(8)),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'PAYMENT SUCCESS',
                      style: TextStyle(
                        color: const Color(0xFF212121),
                        fontSize: fontSize(24),
                        fontFamily: UsedFonts().familyAkira,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: heightSize(32)),
                    Container(
                      width: widthSize(100),
                      height: heightSize(100),
                      padding: EdgeInsets.only(
                          top: heightSize(24),
                          left: widthSize(22),
                          right: widthSize(26),
                          bottom: heightSize(24)),
                      decoration: ShapeDecoration(
                        color: mainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(94),
                        ),
                      ),
                      child: Image.asset("assets/images/mask.png"),
                    ),
                    SizedBox(height: heightSize(20)),
                    Text(
                      'Congratulations, your payment was successful and you have registered for the tournament, see your brackets',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: const Color(0xFF212121),
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(height: heightSize(16)),
                    buttonWidget(
                        context, "SEE BRACKET", () {}, mainColor, Colors.white),
                    SizedBox(height: heightSize(16)),
                    buttonWidget(context, "BACK HOMEPAGE", () {
                      Get.offAll(()=> HomeScreen());
                    }, backgroundSecondary, Colors.black)
                  ]),
            ),
          );
        });
  }
}
