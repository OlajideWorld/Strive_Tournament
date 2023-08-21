import 'package:artelio/HomeScreen/components/notifications_card.dart';
import 'package:artelio/HomeScreen/controller/homecontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({super.key});

  final HomeController controller = HomeController.instance;
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
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              child: Obx(
                () => Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: widthSize(25)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Get.back();
                                },
                                icon: const Icon(Icons.arrow_back_sharp)),
                            SizedBox(width: widthSize(33)),
                            Text(
                              'NOTIFICATION',
                              style: TextStyle(
                                color: Color(0xFF212121),
                                fontSize: fontSize(24),
                                fontFamily: UsedFonts().familyAkira,
                                fontWeight: FontWeight.w800,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: heightSize(39)),
                      switchView(),
                      SizedBox(height: heightSize(24)),
                      if (controller.isSelected.value == true)
                        general(context)
                      else if (controller.isSelected.value == false)
                        reward(context)
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }

  general(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        notificationCard(context, "assets/images/pubG.png",
            "PUBG Tournament #2", "Offline", "Friday, 09:02 AM"),
        //
        notificationCard(context, "assets/images/warcraft.png",
            "World Of Warcraft Tour #1", "Online", "Saturday, 08:02 AM"),
        //
        notificationCard(context, "assets/images/tekken.png",
            "Tekken Tournament #5", "Offline", "Sunday, 03:02 PM"),
        //
        notificationCard(context, "assets/images/titans.png",
            "Clash Of Clans Tournament #3", "Online", "Tuesday, 08:22 AM"),
        //
        notificationCard(context, "assets/images/nite.png", "Fortnite Cup #4",
            "Offline", "Wednesday, 07:02 PM"),
        //
        notificationCard(context, "assets/images/legends.png",
            "Tournament Mobile Legend #5", "Offline", "Friday, 10:02 AM"),
      ]),
    );
  }

  reward(BuildContext context) {
    return SizedBox(
      child: Column(children: [
        notificationCard2(context, "assets/images/legends.png",
            "500 Diamond Mobile legend", "Friday, 09:02 AM"),
        notificationCard2(context, "assets/images/kriss.png",
            "PUBG Tournament #2", "Friday, 09:02 AM")
      ]),
    );
  }
}
