import 'package:artelio/HomeScreen/components/tournament_details_widget.dart';
import 'package:artelio/HomeScreen/screens/view_tournament.dart';
import 'package:artelio/common/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class TournamentDescriptionPage extends StatelessWidget {
  const TournamentDescriptionPage({super.key});

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
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                    const Spacer(),
                    SizedBox(
                      height: heightSize(68),
                      width: widthSize(68),
                      child: SvgPicture.asset(
                        "assets/images/button2.svg",
                        fit: BoxFit.contain,
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
              Text(
                'MOBILE LEGEND \nJAKSEL CUP',
                style: TextStyle(
                  color: Color(0xFF212121),
                  fontSize: fontSize(24),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: heightSize(8)),
              SizedBox(
                  height: heightSize(100),
                  width: width,
                  child: Image.asset(
                    "assets/images/album1.png",
                    fit: BoxFit.fitWidth,
                  )),
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
              Obx(
                () => Text(
                  controller.isSelected.value == true ? 'DESCRIPTION' : "RULE",
                  style: TextStyle(
                    color: Color(0xFF212121),
                    fontSize: fontSize(24),
                    fontFamily: UsedFonts().familyAkira,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(
                width: width,
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                  style: TextStyle(
                    color: const Color(0xFF212121),
                    fontSize: fontSize(20),
                    fontFamily: UsedFonts().familyModernist,
                    fontWeight: FontWeight.w400,
                    height: 1.40,
                  ),
                ),
              ),
              const Spacer(),
              buttonWidget(context, "JOIN TOURNAMENT", () {
                if (controller.isSelected.value == true) {
                  Get.to(() => const ViewTournamentScreen());
                } else {
                  Get.to(() => const ViewRuleTournamentScreen());
                }
              }, mainColor, Colors.white)
            ]),
          ),
        ));
  }
}
