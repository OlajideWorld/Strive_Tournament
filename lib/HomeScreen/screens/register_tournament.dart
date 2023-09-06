import 'package:artelio/HomeScreen/screens/register_tournamnet2.dart';
import 'package:artelio/common/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class RegisterTournament extends StatelessWidget {
  const RegisterTournament({super.key});

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
                horizontal: widthSize(8), vertical: heightSize(8)),
            decoration: ShapeDecoration(
              color: backgroundSecondary,
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
                'Team',
                style: TextStyle(
                  color: Color(0xFFBEBEBE),
                  fontSize: fontSize(20),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: heightSize(8)),
              //
              Row(
                children: [
                  SizedBox(
                    height: heightSize(64),
                    width: widthSize(64),
                    child: Image.asset("assets/images/rtimage.png"),
                  ),
                  SizedBox(width: widthSize(16)),
                  Text(
                    'TEAM SECRET',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: const Color(0xFF212121),
                      fontSize: fontSize(20),
                      fontFamily: UsedFonts().familyAkira,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
              //
              SizedBox(height: heightSize(48)),
              Text(
                'Choose Payment Method',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: fontSize(20),
                  fontFamily: UsedFonts().familyModernist,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(height: heightSize(8)),
              //
              Container(
                height: heightSize(60),
                width: width,
                padding: const EdgeInsets.all(16),
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFBEBEBE)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Credit Card',
                        style: TextStyle(
                          color: Color(0xFFBEBEBE),
                          fontSize: fontSize(20),
                          fontFamily: UsedFonts().familyModernist,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Image.asset(
                        "assets/images/debitcard.png",
                        fit: BoxFit.contain,
                      )
                    ]),
              ),
              //
              SizedBox(height: heightSize(8)),
              //
              Container(
                height: heightSize(60),
                width: width,
                padding: const EdgeInsets.all(16),
                decoration: ShapeDecoration(
                  color: Color(0xFFF4F4F4),
                  shape: RoundedRectangleBorder(
                    side: BorderSide(width: 0.50, color: Color(0xFFBEBEBE)),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Paypal',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: fontSize(20),
                          fontFamily: UsedFonts().familyModernist,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Image.asset(
                        "assets/images/paypal.png",
                        fit: BoxFit.contain,
                      )
                    ]),
              ),
              //
              const Spacer(),
              buttonWidget(context, "Continue", () {
                Get.to(() => const RegisterTournamentScreen2());
              }, mainColor, backgroundSecondary)
            ]),
          ),
        ));
  }
}
