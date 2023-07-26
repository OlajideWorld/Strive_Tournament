// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:strive/utils/sizes.dart';

class CardDetails {
  List<Container> cards = [
    Container(
      width: widthSize(359),
      height: heightSize(310),
      alignment: Alignment.center,
      decoration: ShapeDecoration(
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
        color: Colors.purple,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      alignment: Alignment.center,
      child: const Text('3'),
    )
  ];
}
