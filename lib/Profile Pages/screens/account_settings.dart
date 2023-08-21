import 'package:artelio/common/buttons.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/sizes.dart';

class AccountSettingsScreen extends StatelessWidget {
  const AccountSettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
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
              horizontal: widthSize(8), vertical: heightSize(16)),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                imagesCard(context, "assets/images/avatarimage1.png"),
                imagesCard(context, "assets/images/avatarimage2.png"),
                imagesCard(context, "assets/images/avatarimage3.png")
              ],
            ),
            SizedBox(height: heightSize(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                imagesCard(context, "assets/images/avatarimage8.png"),
                imagesCard(context, "assets/images/avatarimage6.png"),
                imagesCard(context, "assets/images/avatarimage5.png")
              ],
            ),
            SizedBox(height: heightSize(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                imagesCard(context, "assets/images/avatarimage4.png"),
                imagesCard(context, "assets/images/avatarimage9.png"),
                imagesCard(context, "assets/images/avatarimage7.png")
              ],
            ),
            SizedBox(height: heightSize(8)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                imagesCard(context, "assets/images/avatarimage2.png"),
                imagesCard(context, "assets/images/avatarimage3.png"),
                Container(
                  width: widthSize(114),
                  height: heightSize(114),
                  padding: EdgeInsets.all(heightSize(32.75)),
                  decoration: const ShapeDecoration(
                    color: Color(0xFFF4F4F4),
                    shape: OvalBorder(),
                  ),
                  child: const Icon(Icons.add),
                )
              ],
            ),
            const Spacer(),
            buttonWidget(
                context, "SAVE PROFILE", () {}, mainColor, Colors.white),
            SizedBox(height: heightSize(7)),
            buttonWidget(context, "cancel", () {
              Get.back();
            }, Colors.white, mainColor)
          ]),
        ),
      ),
    );
  }

  imagesCard(BuildContext context, String image) {
    return Container(
      width: widthSize(114),
      height: heightSize(114),
      decoration: ShapeDecoration(
        color: const Color(0xFFCBCAB2),
        shape: const OvalBorder(),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.fill),
      ),
    );
  }
}
