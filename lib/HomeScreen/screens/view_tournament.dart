import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/sizes.dart';

class ViewTournamentScreen extends StatelessWidget {
  const ViewTournamentScreen({super.key});

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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'DESCRIPTION',
                      style: TextStyle(
                        color: const Color(0xFF212121),
                        fontSize: fontSize(24),
                        fontFamily: UsedFonts().familyAkira,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: heightSize(16)),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                      style: TextStyle(
                        color: const Color(0xFF212121),
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(height: heightSize(10)),
                    Text(
                      'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
                      style: TextStyle(
                        color: const Color(0xFF212121),
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(height: heightSize(10)),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. ',
                      style: TextStyle(
                        color: const Color(0xFF212121),
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}

class ViewRuleTournamentScreen extends StatelessWidget {
  const ViewRuleTournamentScreen({super.key});

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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'RULE',
                      style: TextStyle(
                        color: const Color(0xFF212121),
                        fontSize: fontSize(24),
                        fontFamily: UsedFonts().familyAkira,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: heightSize(16)),
                    Text(
                      'By registering for a tournament, I agree with ONE Esports Privacy Policy and Terms of Use.',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(height: heightSize(10)),
                    Text(
                      'A player, or team, that is currently competing in the VCT Main Event, or has competed in the most recent season (prior to the current season) is not eligible to compete in any Community Tournaments.',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(height: heightSize(10)),
                    Text(
                      'Players should make sure that their match history is not “hidden” to allow for Battlefy’s Assisted Score Reporting feature to work as intended.',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(height: heightSize(10)),
                    Text(
                      'In case of a match issue, call an admin by pressing the Report Match Issue button.',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(height: heightSize(10)),
                    Text(
                      'Teams and players are not allowed to use “Riot Games”, or “ONE Esports”, or any similar brand, in their names',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
