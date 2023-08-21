import 'package:artelio/HomeScreen/screens/verify_number.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../common/buttons.dart';
import '../../common/textField.dart';
import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class PaymentTournamentSccreen extends StatelessWidget {
  const PaymentTournamentSccreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
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
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PAYMENT \nTOURNAMENT',
                      style: TextStyle(
                        color: const Color(0xFF212121),
                        fontSize: fontSize(24),
                        fontFamily: UsedFonts().familyAkira,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: heightSize(16)),
                    Text(
                      'You will pay with',
                      style: TextStyle(
                        color: Color(0xFF212121),
                        fontSize: fontSize(20),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(height: heightSize(16)),
                    Row(
                      children: [
                        Container(
                          height: heightSize(64),
                          width: widthSize(64),
                          child: Image.asset(
                            "assets/images/paypal2.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(width: widthSize(8)),
                        Text(
                          'Paypal balance',
                          style: TextStyle(
                            color: const Color(0xFF212121),
                            fontSize: fontSize(18),
                            fontFamily: UsedFonts().familyModernist,
                            fontWeight: FontWeight.w400,
                            height: 1.40,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '\$260,16 USD',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xFF212121),
                            fontSize: fontSize(16),
                            fontFamily: UsedFonts().familyModernist,
                            fontWeight: FontWeight.w400,
                            height: 1.40,
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: heightSize(8)),
                    Text(
                      'Change',
                      style: TextStyle(
                        color: mainColor,
                        fontSize: fontSize(16),
                        fontFamily: UsedFonts().familyModernist,
                        fontWeight: FontWeight.w400,
                        height: 1.40,
                      ),
                    ),
                    SizedBox(height: heightSize(8)),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const VerifyNumberScreen());
                      },
                      child: Container(
                        height: heightSize(60),
                        width: width,
                        padding: const EdgeInsets.all(16),
                        decoration: ShapeDecoration(
                          color: mainColor,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 0.50, color: mainColor),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Paypal',
                                style: TextStyle(
                                  color: Color(0xFFF9F9F9),
                                  fontSize: fontSize(20),
                                  fontFamily: UsedFonts().familyModernist,
                                  fontWeight: FontWeight.w400,
                                  height: 1.40,
                                ),
                              ),
                              Image.asset(
                                "assets/images/paypal.png",
                                fit: BoxFit.contain,
                              )
                            ]),
                      ),
                    ),
                    SizedBox(height: heightSize(8)),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => const VerifyNumberScreen());
                      },
                      child: Container(
                        height: heightSize(60),
                        width: width,
                        padding: const EdgeInsets.all(16),
                        decoration: ShapeDecoration(
                          color: Color(0xFFF4F4F4),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                                width: 0.50, color: Color(0xFFBEBEBE)),
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Credit Card',
                                style: TextStyle(
                                  color: Color(0xFFBEBEBE),
                                  fontSize: fontSize(20),
                                  fontFamily: UsedFonts().familyModernist,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Image.asset(
                                "assets/images/debitcard.png",
                                fit: BoxFit.contain,
                              )
                            ]),
                      ),
                    ),
                  ]),
            ),
          ));
    });
  }
}
