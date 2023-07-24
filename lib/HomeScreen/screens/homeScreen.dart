// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:strive/utils/colors.dart';

import '../../common/textstyle.dart';
import '../../utils/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainWhite,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
            child: Container(
          height: heightSize(40),
          decoration: const BoxDecoration(gradient: backgroundColor),
          child: Text(
            "Timothy",
            style: TextStyle(fontFamily: UsedFonts().familyAkira),
          ),
        )),
      ),
    );
  }
}
