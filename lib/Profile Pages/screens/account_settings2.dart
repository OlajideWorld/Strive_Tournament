import 'package:artelio/common/textField.dart';
import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/buttons.dart';
import '../../utils/sizes.dart';

class AccountSettingsScreen2 extends StatelessWidget {
  const AccountSettingsScreen2({super.key});

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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ACCOUNT \nSETTINGS',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: fontSize(24),
                        fontFamily: UsedFonts().familyAkira,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: heightSize(16)),
                    const InputTextField(
                        obscureText: false,
                        hintText: "Rae Lil Black",
                        text: "Username",
                        innerColor: Color(0xFFF4F4F4),
                        textColor: mainBlack,
                        differentiate: 1),
                    SizedBox(height: heightSize(8)),
                    const InputTextField(
                        obscureText: false,
                        hintText: "Raelilblack@gmail,com",
                        text: "Email",
                        innerColor: Color(0xFFF4F4F4),
                        textColor: mainBlack,
                        differentiate: 1),
                    SizedBox(height: heightSize(8)),
                    const InputTextField(
                        obscureText: false,
                        hintText: "0821678921425432",
                        text: "ID Card Number",
                        innerColor: Color(0xFFF4F4F4),
                        textColor: mainBlack,
                        differentiate: 1),
                    SizedBox(height: heightSize(8)),
                    const InputTextField(
                        obscureText: false,
                        hintText: "This is the famous rae lil black",
                        text: "Bio",
                        innerColor: Color(0xFFF4F4F4),
                        textColor: mainBlack,
                        differentiate: 1)
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
