import 'package:artelio/common/textstyle.dart';
import 'package:artelio/utils/colors.dart';
import 'package:flutter/material.dart';

import '../../utils/sizes.dart';
import '../components/frames.dart';

class HomeSearchScreen extends StatelessWidget {
  HomeSearchScreen({super.key});

  List<String> _previousSearches = ["flutter", "dart", "google"];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        backgroundColor: mainColor,
        body: GestureDetector(
          onTap: () {
            // This will open the keyboard.
            FocusScope.of(context).requestFocus();
          },
          child: Container(
            height: height,
            width: width,
            padding: EdgeInsets.only(
                left: widthSize(10),
                right: widthSize(4),
                top: height * 0.05,
                bottom: heightSize(10)),
            decoration: const BoxDecoration(color: mainColor),
            child: Column(children: [
              Row(
                children: [
                  SizedBox(
                    width: widthSize(305),
                    height: heightSize(58),
                    child: GestureDetector(
                      onTap: () => _showPreviousSearches(context),
                      child: TextFormField(
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: fontSize(16),
                          fontFamily: UsedFonts().familyModernist,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                            hintText: "Search Something",
                            hintStyle: TextStyle(
                              color: Colors.white,
                              fontSize: fontSize(16),
                              fontFamily: UsedFonts().familyModernist,
                              fontWeight: FontWeight.w400,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(29)),
                                borderSide: BorderSide(
                                    color: Colors.white
                                        .withOpacity(0.20000000298023224))),
                            enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(29)),
                                borderSide: BorderSide(
                                    color: Colors.white
                                        .withOpacity(0.20000000298023224)))),
                      ),
                    ),
                  ),
                  iconFrame(context, "assets/images/searchicon.svg")
                ],
              ),
            ]),
          ),
        ),
      );
    });
  }

  void _showPreviousSearches(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Previous Searches"),
          content: ListView.builder(
            itemCount: _previousSearches.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(_previousSearches[index]),
                trailing: Icon(
                  Icons.cancel,
                  size: heightSize(24),
                  color: Colors.white,
                ),
                onTap: () {
                  // This will search for the selected word.
                  print(_previousSearches[index]);
                },
              );
            },
          ),
        );
      },
    );
  }
}
