import 'package:artelio/HomeScreen/components/tournament_details_widget.dart';
import 'package:artelio/HomeScreen/screens/register_tournament.dart';
import 'package:artelio/common/buttons.dart';
import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../utils/sizes.dart';

class CardScreenWidegt extends StatelessWidget {
  final String image;
  const CardScreenWidegt({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: mainBlack,
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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
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
              SizedBox(height: heightSize(16)),
              SizedBox(
                height: heightSize(300),
                width: width,
                child: Image.asset(
                  image,
                  fit: BoxFit.fitWidth,
                ),
              ),
              SizedBox(height: heightSize(7)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: heightSize(49),
                    width: widthSize(169),
                    child: SvgPicture.asset("assets/images/ticket.svg"),
                  ),
                  SizedBox(
                    height: heightSize(49),
                    width: widthSize(169),
                    child: SvgPicture.asset("assets/images/slot.svg"),
                  )
                ],
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: heightSize(49),
                    width: widthSize(169),
                    child: SvgPicture.asset("assets/images/date.svg"),
                  ),
                  SizedBox(
                    height: heightSize(49),
                    width: widthSize(169),
                    child: SvgPicture.asset("assets/images/location.svg"),
                  )
                ],
              ),
              SizedBox(height: heightSize(16)),
              tournamentWidget(context),
              SizedBox(height: heightSize(16)),
              Text(
                "Description",
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: fontSize(24),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: heightSize(16)),
              Expanded(
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: fontSize(20),
                    fontFamily: UsedFonts().familyModernist,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              buttonWidget(context, "Join Tournament", () {
                showCustomDialog(context);
              }, backgroundSecondary, mainColor)
            ]),
          ),
        ));
  }
}

showCustomDialog(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return SmartDialog.show(
      alignment: Alignment.topCenter,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(top: heightSize(40)),
          child: Container(
            height: heightSize(580),
            width: width,
            padding: EdgeInsets.symmetric(horizontal: widthSize(8)),
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'REGISTER \nTOURNAMENT',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: fontSize(24),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: heightSize(18)),
              Text(
                'Registration Fee',
                style: TextStyle(
                  color: Color(0xFFBEBEBE),
                  fontSize: fontSize(20),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: heightSize(8)),
              Text(
                '\$ 12.86',
                style: TextStyle(
                  color: mainColor,
                  fontSize: fontSize(20),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: heightSize(16)),
              Text(
                'Tournament Venue',
                style: TextStyle(
                  color: Color(0xFFBEBEBE),
                  fontSize: fontSize(20),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                  height: 1.40,
                ),
              ),
              SizedBox(height: heightSize(8)),
              Text(
                'ONLINE TOURNAMENT',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: fontSize(20),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: heightSize(18)),
              Text(
                'Tournament Date',
                style: TextStyle(
                  color: Color(0xFFBEBEBE),
                  fontSize: fontSize(20),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: heightSize(8)),
              Text(
                'SATURDAY, 01 OCT 2022',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: fontSize(20),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: heightSize(16)),
              Text(
                'Choose Team',
                style: TextStyle(
                  color: Color(0xFFBEBEBE),
                  fontSize: fontSize(20),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: heightSize(16)),
              SizedBox(
                height: heightSize(120),
                width: width,
                child: Image.asset("assets/images/mask.png"),
              ),
              SizedBox(height: heightSize(16)),
              buttonWidget(context, "Continue", () {
                Get.to(() => const RegisterTournament());
              }, mainColor, backgroundSecondary)
            ]),
          ),
        );
      });
}
