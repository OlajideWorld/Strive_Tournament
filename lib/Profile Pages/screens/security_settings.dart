import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/buttons.dart';
import '../../common/textField.dart';
import '../../utils/sizes.dart';

class SecuritySettingsScreen extends StatelessWidget {
  const SecuritySettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainColor,
      bottomNavigationBar: SizedBox(
        height: heightSize(135),
        child: Column(children: [
          buttonWidget(context, "SAVE PROFILE", () {}, mainColor, Colors.white),
          SizedBox(height: heightSize(7)),
          buttonWidget(context, "cancel", () {
            Get.back();
          }, Colors.white, mainColor)
        ]),
      ),
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
              horizontal: widthSize(8), vertical: heightSize(16)),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              'SECURITY \nSETTINGS',
              style: TextStyle(
                color: const Color(0xFF212121),
                fontSize: fontSize(24),
                fontFamily: UsedFonts().familyAkira,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: heightSize(16)),
            const InputTextField(
                obscureText: true,
                hintText: "wleowleowleowleo",
                text: "Change Password",
                innerColor: Color(0xFFF4F4F4),
                textColor: mainBlack,
                differentiate: 1),
            SizedBox(height: heightSize(8)),
            const InputTextField(
                obscureText: true,
                hintText: "wleowleowleowleo",
                text: "Re-type Password",
                innerColor: Color(0xFFF4F4F4),
                textColor: mainBlack,
                differentiate: 1),
          ]),
        ),
      ),
    );
  }
}
