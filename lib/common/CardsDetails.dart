// ignore_for_file: file_names

import 'package:artelio/HomeScreen/screens/cardScreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/sizes.dart';

class CardDetails {
  List<Widget> cards = [
    GestureDetector(
      onTap: () {
        Get.to(() => const CardScreenWidegt(image: "assets/images/album1.png"));
      },
      child: Container(
        width: widthSize(359),
        height: heightSize(310),
        alignment: Alignment.center,
        decoration: ShapeDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/album1.png"), fit: BoxFit.cover),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: const Text('1'),
      ),
    ),
    //
    GestureDetector(
      onTap: () {
        Get.to(() => const CardScreenWidegt(image: "assets/images/album2.png"));
      },
      child: Container(
        width: widthSize(359),
        height: heightSize(310),
        decoration: ShapeDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/album2.png"), fit: BoxFit.cover),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        alignment: Alignment.center,
        child: const Text('2'),
      ),
    ),
    //
    GestureDetector(
      onTap: () {
        Get.to(() => const CardScreenWidegt(image: "assets/images/album3.png"));
      },
      child: Container(
        width: widthSize(359),
        height: heightSize(310),
        decoration: ShapeDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/album3.png"), fit: BoxFit.cover),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        alignment: Alignment.center,
        child: const Text('3'),
      ),
    ),
    //
    GestureDetector(
      onTap: () {
        Get.to(() => const CardScreenWidegt(image: "assets/images/album4.png"));
      },
      child: Container(
        width: widthSize(359),
        height: heightSize(310),
        decoration: ShapeDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/album4.png"), fit: BoxFit.cover),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        alignment: Alignment.center,
        child: const Text('3'),
      ),
    ),
    GestureDetector(
      onTap: () {
        Get.to(() => const CardScreenWidegt(image: "assets/images/album5.png"));
      },
      child: Container(
        width: widthSize(359),
        height: heightSize(310),
        decoration: ShapeDecoration(
          image: const DecorationImage(
              image: AssetImage("assets/images/album5.png"), fit: BoxFit.cover),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        alignment: Alignment.center,
        child: const Text('3'),
      ),
    )
  ];
}
