import 'package:artelio/Profile%20Pages/screens/account_settings.dart';
import 'package:artelio/Profile%20Pages/screens/account_settings2.dart';
import 'package:artelio/Profile%20Pages/screens/leader_board.dart';
import 'package:artelio/Profile%20Pages/screens/security_settings.dart';
import 'package:artelio/Profile%20Pages/screens/track_record.dart';
import 'package:artelio/common/buttons.dart';
import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/sizes.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              horizontal: widthSize(8), vertical: heightSize(23)),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Column(children: [
            SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: SizedBox(
                      height: heightSize(68),
                      width: widthSize(68),
                      child: SvgPicture.asset("assets/images/backarrow.svg"),
                    ),
                  ),
                  SizedBox(
                    height: heightSize(68),
                    width: widthSize(68),
                    child: SvgPicture.asset("assets/images/bookmark.svg"),
                  )
                ],
              ),
            ),
            SizedBox(height: heightSize(16)),
            SizedBox(
              height: heightSize(150),
              child: Stack(
                children: [
                  Container(
                    width: widthSize(130),
                    height: heightSize(130),
                    decoration: const ShapeDecoration(
                      color: Color(0xFFCBCAB2),
                      shape: OvalBorder(),
                      image: DecorationImage(
                          image: AssetImage("assets/images/avatarimage8.png"),
                          fit: BoxFit.fill),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Get.to(() => const AccountSettingsScreen());
                    },
                    child: SizedBox(
                      child: Padding(
                        padding: EdgeInsets.only(
                            top: heightSize(111),
                            left: widthSize(46),
                            right: widthSize(45)),
                        child: SvgPicture.asset("assets/images/edit.svg"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: heightSize(16)),
            Text(
              'RAELIL BLACK',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: mainBlack,
                fontSize: fontSize(18),
                fontFamily: UsedFonts().familyAkira,
                fontWeight: FontWeight.w800,
              ),
            ),
            SizedBox(height: heightSize(4)),
            Text(
              'Raelilblack@gmail.com',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFBEBEBE),
                fontSize: fontSize(14),
                fontFamily: UsedFonts().familyModernist,
                fontWeight: FontWeight.w400,
                height: 1.40,
              ),
            ),
            SizedBox(height: heightSize(8)),
            Text(
              'This is the famous rae lil black',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color(0xFFBEBEBE),
                fontSize: fontSize(14),
                fontFamily: UsedFonts().familyModernist,
                fontWeight: FontWeight.w400,
                height: 1.40,
              ),
            ),
            SizedBox(height: heightSize(32)),
            buttonWidget(context, "Track Record Player", () {
              Get.to(() => const TrackRecordScreen());
            }, const Color(0xFFF4F4F4), mainBlack),
            //
            SizedBox(height: heightSize(7)),
            buttonWidget(context, "Leaderboard", () {
              Get.to(() => LeaderBoardScreen());
            }, const Color(0xFFF4F4F4), mainBlack),
            //
            SizedBox(height: heightSize(7)),
            buttonWidget(context, "Account Settings", () {
              Get.to(() => const AccountSettingsScreen2());
            }, const Color(0xFFF4F4F4), mainBlack),
            //
            SizedBox(height: heightSize(7)),
            buttonWidget(context, "Security Settings", () {
              Get.to(() => const SecuritySettingsScreen());
            }, const Color(0xFFF4F4F4), mainBlack),
            //
            const Spacer(),
            buttonWidget(context, "log out", () {}, mainColor, Colors.white)
          ]),
        ),
      ),
    );
  }
}
