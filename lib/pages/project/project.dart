// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';

import '../../constants/mobile_styles.dart';
import '../../constants/style.dart';
import 'mobile.dart';
import 'web.dart';

class Project extends StatelessWidget {
  const Project({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: mediaWidth > 750 ? 50 : 20,
          ),
          Center(
            child: Text(
              "What we do?",
              style: mediaWidth > 750
                  ? sideHeadlineStyle
                  : sideHeadlineStyleMobile,
            ),
          ),
          SizedBox(
            height: mediaWidth > 750 ? 50 : 20,
          ),
          if (mediaWidth > 750)
            whatWeDoWebWidget(
              mediaWidth: mediaWidth,
              mediaHeight: mediaHeight,
            ),
          if (mediaWidth < 750)
            whatWeDoMobileWidget(
              mediaWidth: mediaWidth,
              mediaHeight: mediaHeight,
            ),
          SizedBox(
            height: mediaWidth > 750 ? 50 : 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Column(
                children: [
                  Text(
                    textAlign: TextAlign.justify,
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna\nfringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper",
                    style: mediaWidth > 740
                        ? normalTextStyle
                        : normalTextStyleMobile,
                  ),
                  Text(
                    textAlign: TextAlign.justify,
                    "eget nulla",
                    style: mediaWidth > 740
                        ? normalTextStyle
                        : normalTextStyleMobile,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: mediaWidth > 750 ? 50 : 20,
          ),
          if (mediaWidth > 750) webOurProjectsLayout(mediaWidth: mediaWidth),
          if (mediaWidth < 750) mobileOurProjectsLayout(mediaWidth: mediaWidth),
        ],
      ),
    );
  }
}
