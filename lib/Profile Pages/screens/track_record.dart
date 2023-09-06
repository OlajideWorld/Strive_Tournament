import 'package:artelio/Profile%20Pages/components/track_card.dart';
import 'package:artelio/common/buttons.dart';
import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/sizes.dart';
import '../components/track_card2.dart';

class TrackRecordScreen extends StatelessWidget {
  const TrackRecordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainColor,
      bottomNavigationBar: Padding(
        padding: EdgeInsets.only(
            bottom: heightSize(15), left: widthSize(8), right: widthSize(8)),
        child: buttonWidget(context, "Back", () {
          Get.back();
        }, Colors.white, mainColor),
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
              'TRACK RECORD \nPLAYER',
              style: TextStyle(
                color: const Color(0xFF212121),
                fontSize: fontSize(24),
                fontFamily: UsedFonts().familyAkira,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: heightSize(16)),
            trackCard(context),
            SizedBox(height: heightSize(8)),
            trackCard2(context)
          ]),
        ),
      ),
    );
  }
}
