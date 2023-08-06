// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../utils/sizes.dart';

class CardDetails {
  List<Container> cards = [
    Container(
      width: widthSize(359),
      height: heightSize(310),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
        image: const DecorationImage(
            image: AssetImage("assets/images/album1.png"), fit: BoxFit.cover),
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: const Text('1'),
    ),
    Container(
      width: widthSize(359),
      height: heightSize(310),
      decoration: ShapeDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/album2.png"), fit: BoxFit.cover),
        color: Colors.red,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      alignment: Alignment.center,
      child: const Text('2'),
    ),
    Container(
      width: widthSize(359),
      height: heightSize(310),
      decoration: ShapeDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/album3.png"), fit: BoxFit.cover),
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      alignment: Alignment.center,
      child: const Text('3'),
    ),
    Container(
      width: widthSize(359),
      height: heightSize(310),
      decoration: ShapeDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/album4.png"), fit: BoxFit.cover),
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      alignment: Alignment.center,
      child: const Text('3'),
    ),
    Container(
      width: widthSize(359),
      height: heightSize(310),
      decoration: ShapeDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/album5.png"), fit: BoxFit.cover),
        color: Colors.blue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      alignment: Alignment.center,
      child: const Text('3'),
    )
  ];
}
