import 'package:artelio/common/buttons.dart';
import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:artelio/utils/sizes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

shareComment(BuildContext context) {
  final width = MediaQuery.of(context).size.width;
  return showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            width: width,
            height: heightSize(327),
            padding: EdgeInsets.only(
                top: heightSize(16), left: widthSize(8), right: widthSize(8)),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'SHARE ARTICLE',
                    style: TextStyle(
                      color: Color(0xFF212121),
                      fontSize: fontSize(24),
                      fontFamily: UsedFonts().familyAkira,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: heightSize(16)),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        socialMedia(context, Icons.discord_sharp),
                        socialMedia(context, FontAwesomeIcons.twitter),
                        socialMedia(context, FontAwesomeIcons.whatsapp),
                        socialMedia(context, FontAwesomeIcons.facebook)
                      ],
                    ),
                  ),
                  SizedBox(height: heightSize(8)),
                  SizedBox(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        socialMedia(context, FontAwesomeIcons.skype),
                        socialMedia(
                            context, FontAwesomeIcons.facebookMessenger),
                        socialMedia(context, FontAwesomeIcons.instagram),
                        socialMedia(context, FontAwesomeIcons.telegram)
                      ],
                    ),
                  ),
                  SizedBox(height: heightSize(16)),
                  buttonWidget(
                      context, "CANCEL", () {}, mainColor, Colors.white)
                ]),
          ),
        );
      });
}

socialMedia(BuildContext context, IconData icon) {
  return Container(
      width: widthSize(86),
      height: heightSize(86),
      decoration: ShapeDecoration(
        color: mainColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(64),
        ),
      ),
      child: Icon(
        icon,
        size: heightSize(32),
        color: Colors.white,
      ));
}
