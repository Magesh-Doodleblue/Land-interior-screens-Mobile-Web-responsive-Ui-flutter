// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import 'mobile.dart';
import 'web.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Center(
        child: ListView(
          children: [
            if (mediaWidth > 750)
              aboutWebLayout(
                mediaHeight: mediaHeight,
                mediaWidth: mediaWidth,
              ),
            if (mediaWidth < 750)
              aboutMobileLayout(
                mediaHeight: mediaHeight,
                mediaWidth: mediaWidth,
              ),
          ],
        ),
      ),
    );
  }
}
