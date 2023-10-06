import 'package:artelio/HomeScreen/components/commentsCard.dart';
import 'package:flutter/material.dart';

import '../../common/textstyle.dart';
import '../../utils/colors.dart';
import '../../utils/sizes.dart';

class CommentsScreen extends StatelessWidget {
  const CommentsScreen({super.key});

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
            ),
            child: Container(
              height: height,
              width: width,
              padding: EdgeInsets.symmetric(
                  horizontal: widthSize(8), vertical: heightSize(16)),
              decoration: ShapeDecoration(
                color: backgroundSecondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: heightSize(700),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'ADD COMMENT',
                                style: TextStyle(
                                  color: Color(0xFF212121),
                                  fontSize: fontSize(24),
                                  fontFamily: UsedFonts().familyAkira,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(height: heightSize(16)),
                              commentCards(
                                  context,
                                  "assets/images/avatarimage1.png",
                                  "Sed facilisis at aenean a ac scelerisque morbi sed. A etiam nunc volutpat facilisis "),
                              commentCards(
                                  context,
                                  "assets/images/avatarimage6.png",
                                  "Maecenas amet diam non lobortis ac pretium nibh nisl."),
                              commentCards(
                                  context,
                                  "assets/images/avatarimage5.png",
                                  "Lacus elementum aliquam proin sapien elit luctus augue orci. Tellus."),
                              commentCards(
                                  context,
                                  "assets/images/avatarimage8.png",
                                  "Aliquam adipiscing arcu ipsum quis enim malesuada sapien. Enim ultrices eget enim et dictum ipsum sem."),
                              commentCards(
                                  context,
                                  "assets/images/avatarimage4.png",
                                  "Vitae aliquet eget natoque nunc. Ac donec orci arcu lorem a suspendisse habitant odio. In euismod fames eget."),
                              commentCards(
                                  context,
                                  "assets/images/avatarimage2.png",
                                  "Vitae aliquet eget natoque nunc. Ac donec orci arcu lorem a suspendisse habitant odio. In euismod fames eget."),
                              commentCards(
                                  context,
                                  "assets/images/avatarimage3.png",
                                  "Vitae aliquet eget natoque nunc. Ac donec orci arcu lorem a suspendisse habitant odio. In euismod fames eget."),
                              commentCards(
                                  context,
                                  "assets/images/avatarimage7.png",
                                  "Vitae aliquet eget natoque nunc. Ac donec orci arcu lorem a suspendisse habitant odio. In euismod fames eget."),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: heightSize(76),
                      width: width,
                      padding: EdgeInsets.symmetric(horizontal: widthSize(8)),
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Row(children: [
                        Expanded(
                          child: TextFormField(
                            style: TextStyle(
                              color: mainBlack,
                              fontSize: fontSize(16),
                              fontFamily: UsedFonts().familyModernist,
                              fontWeight: FontWeight.w400,
                            ),
                            decoration: InputDecoration(
                                fillColor: const Color(0xFFF4F4F4),
                                filled: true,
                                hintText: "Type comment here",
                                hintStyle: TextStyle(
                                  color: const Color(0xFFBEBEBE),
                                  fontSize: fontSize(16),
                                  fontFamily: UsedFonts().familyModernist,
                                  fontWeight: FontWeight.w400,
                                ),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(29)),
                                    borderSide: BorderSide(
                                        color: Colors.white
                                            .withOpacity(0.20000000298023224))),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(29)),
                                    borderSide: BorderSide(
                                        color: Colors.white.withOpacity(
                                            0.20000000298023224)))),
                          ),
                        ),
                        SizedBox(
                          height: heightSize(60),
                          width: widthSize(60),
                          child: Image.asset("assets/images/sendButton.png"),
                        )
                      ]),
                    )
                  ]),
            ),
          ));
    });
  }
}
