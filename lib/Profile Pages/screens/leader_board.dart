import 'package:artelio/Profile%20Pages/components/leader_board_card_widget.dart';
import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';

import '../../HomeScreen/controller/homecontroller.dart';
import '../../common/CardsDetails.dart';
import '../../utils/sizes.dart';

class LeaderBoardScreen extends StatelessWidget {
  LeaderBoardScreen({super.key});

  final HomeController controller = HomeController.instance;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: mainColor,
      body: Container(
        height: height,
        width: width,
        padding: EdgeInsets.only(
            left: widthSize(8),
            right: widthSize(8),
            top: height * 0.05,
            bottom: heightSize(10)),
        decoration: const BoxDecoration(color: mainColor),
        child: Column(children: [
          SizedBox(
            child: Row(
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Container(
                      width: widthSize(58),
                      height: heightSize(58),
                      decoration: ShapeDecoration(
                        color: Colors.white.withOpacity(0.10000000149011612),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(29),
                        ),
                      ),
                      child: const Icon(
                        Icons.arrow_back_sharp,
                        color: Colors.white,
                      ),
                    )),
                SizedBox(width: widthSize(16)),
                Text(
                  'LEADERBOARD',
                  style: TextStyle(
                    color: const Color(0xFFF9F9F9),
                    fontSize: fontSize(24),
                    fontFamily: UsedFonts().familyAkira,
                    fontWeight: FontWeight.w800,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: heightSize(16)),
          Flexible(
            child: SizedBox(
              height: heightSize(332),
              child: CardSwiper(
                cardsCount: CardDetails().cards.length,
                controller: controller.cardController,
                backCardOffset: const Offset(0, 38),
                numberOfCardsDisplayed: 3,
                cardBuilder: (context, index, horizontalThresholdPercentage,
                    verticalThresholdPercentage) {
                  return CardDetails().cards[index];
                },
              ),
            ),
          ),
          SizedBox(height: heightSize(112)),
          leaderBoardCardButton(),
          SizedBox(height: heightSize(24)),
          Container(
            width: widthSize(272),
            height: heightSize(68),
            padding: EdgeInsets.all(5),
            decoration: ShapeDecoration(
              color: mainBlack,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(34),
              ),
            ),
            child: Container(
              width: widthSize(260),
              height: heightSize(56),
              padding: EdgeInsets.symmetric(
                  horizontal: widthSize(18), vertical: heightSize(14)),
              decoration: ShapeDecoration(
                color: Color(0xFF292929),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'All Game',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    Icon(
                      Icons.menu,
                      size: heightSize(24),
                      color: textColor,
                    )
                  ]),
            ),
          ),
        ]),
      ),
    );
  }
}
