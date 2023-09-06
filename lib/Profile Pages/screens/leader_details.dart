import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/sizes.dart';
import '../components/leader_board_details_widget.dart';

class LeaderBoardDetailsScreen extends StatelessWidget {
  const LeaderBoardDetailsScreen({super.key});

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
            Padding(
              padding: EdgeInsets.only(left: widthSize(17)),
              child: Row(
                children: [
                  GestureDetector(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_sharp)),
                  SizedBox(width: widthSize(33)),
                  Text(
                    'LEADERBOARD',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: fontSize(24),
                      fontFamily: UsedFonts().familyAkira,
                      fontWeight: FontWeight.w800,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: heightSize(39)),
            SizedBox(
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    options("WEEK", 92),
                    options("MONTH", 103),
                    options("ALL TIME", 125)
                  ]),
            ),
            SizedBox(height: heightSize(150)),
            leaderBottomWidget(
                context, false, "assets/images/G2.png", "Team G2", "486", "4"),
            //
            SizedBox(height: heightSize(12)),
            leaderBottomWidget(context, true, "assets/images/EvilG.png",
                "EVIL GENIUSES", "478", "5"),
            //
            SizedBox(height: heightSize(12)),
            leaderBottomWidget(context, false, "assets/images/Envyus.png",
                "ENVYUS", "468", "6"),
            //
            SizedBox(height: heightSize(12)),
            leaderBottomWidget(context, false, "assets/images/Aster.png",
                "TEAM ASTER", "458", "7"),
            //
            SizedBox(height: heightSize(12)),
            leaderBottomWidget(context, false, "assets/images/EvilG.png",
                "EXECRATION", "478", "8")
          ]),
        ),
      ),
    );
  }

  options(String text, double width) {
    return Container(
      height: heightSize(38),
      padding: EdgeInsets.symmetric(
          horizontal: widthSize(16), vertical: heightSize(11)),
      decoration: ShapeDecoration(
        color: mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFFF9F9F9),
          fontSize: fontSize(14),
          fontFamily: UsedFonts().familyAkira,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
