import 'package:artelio/Profile%20Pages/screens/leader_details.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../HomeScreen/controller/homecontroller.dart';
import '../../utils/sizes.dart';

leaderBoardCardButton() {
  final HomeController controller = HomeController.instance;
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: widthSize(84)),
    child: SizedBox(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              controller.cardController.undo();
            },
            child: Container(
              height: heightSize(58),
              width: widthSize(58),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(29),
                ),
              ),
              child: const Icon(
                Icons.refresh,
                color: Colors.black,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              controller.cardController.swipeLeft();
            },
            child: Container(
              height: heightSize(58),
              width: widthSize(58),
              decoration: ShapeDecoration(
                color: mainColor,
                shape: RoundedRectangleBorder(
                  side: BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(29),
                ),
              ),
              child: const Icon(
                Icons.cancel_outlined,
                color: Colors.white,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Get.to(() => LeaderBoardDetailsScreen());
            },
            child: Container(
              height: heightSize(58),
              width: widthSize(58),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(29),
                ),
              ),
              child: const Icon(
                Icons.done,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
