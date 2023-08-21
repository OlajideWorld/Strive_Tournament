// ignore_for_file: file_names

import 'package:artelio/HomeScreen/components/bottomsheet.dart';
import 'package:artelio/HomeScreen/controller/homecontroller.dart';
import 'package:artelio/HomeScreen/screens/notification_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_card_swiper/flutter_card_swiper.dart';
import 'package:get/get.dart';

import '../../common/CardsDetails.dart';
import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';
import '../components/cardButtons.dart';
import '../components/frames.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final HomeController controller = HomeController.instance;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        body: Container(
          height: height,
          width: width,
          padding: EdgeInsets.only(
              left: widthSize(4),
              right: widthSize(4),
              top: height * 0.05,
              bottom: heightSize(10)),
          decoration: const BoxDecoration(color: mainColor),
          child: Column(children: [
            Row(
              children: [
                imageFrames(context),
                searchBarFrame(context),
                iconFrame(context, "assets/images/bellicon.svg", () {
                  Get.to(() => NotificationScreen());
                }),
                iconFrame(context, "assets/images/searchicon.svg", () {})
              ],
            ),
            SizedBox(height: heightSize(32)),
            Text(
              "TOURNAMENT",
              style: TextStyle(
                  color: textColor,
                  fontSize: fontSize(24),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800),
            ),
            SizedBox(height: heightSize(40)),
            Flexible(
              child: SizedBox(
                height: heightSize(350),
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
            SizedBox(height: heightSize(72)),
            cardButtons(context),
            SizedBox(height: heightSize(24)),
            homeButtons(context)
          ]),
        ),
      );
    });
  }
}
