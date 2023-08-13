import 'package:artelio/common/textField.dart';
import 'package:flutter/material.dart';

import '../../common/buttons.dart';
import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class RegisterTournamentScreen2 extends StatelessWidget {
  const RegisterTournamentScreen2({super.key});

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
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'REGISTER \nTOURNAMENT',
                style: TextStyle(
                  color: const Color(0xFF212121),
                  fontSize: fontSize(24),
                  fontFamily: UsedFonts().familyAkira,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: heightSize(16)),
              SizedBox(
                height: heightSize(52),
                width: widthSize(129),
                child: Image.asset(
                  "assets/images/paypal.png",
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: heightSize(16)),
              const InputTextField(
                  obscureText: false,
                  text: "Email",
                  hintText: "Enter your email",
                  innerColor: Color(0xFFF4F4F4),
                  textColor: Color(0xFF212121),
                  differentiate: 2),
              SizedBox(height: heightSize(18)),
              const InputTextField(
                  obscureText: true,
                  text: "Password",
                  hintText: "********",
                  innerColor: Color(0xFFF4F4F4),
                  textColor: Color(0xFF212121),
                  differentiate: 2),
              //
              const Spacer(),
              buttonWidget(
                  context, "Continue", () {}, mainColor, backgroundSecondary)
            ]),
          ),
        ));
  }
}
