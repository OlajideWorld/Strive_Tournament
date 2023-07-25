// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:strive/utils/colors.dart';

import '../../common/textstyle.dart';
import '../../utils/sizes.dart';
import '../components/frames.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
              left: widthSize(4), right: widthSize(4), top: height * 0.05),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.00, -1.00),
              end: Alignment(0, 1),
              colors: [Color(0xFFB5B0A3), Color(0xFF262626)],
            ),
          ),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                imageFrames(context),
                searchBarFrame(context),
                iconFrame(context, "assets/images/bellicon.svg"),
                iconFrame(context, "assets/images/searchicon.svg")
              ],
            )
          ]),
        ),
      );
    });
  }
}
