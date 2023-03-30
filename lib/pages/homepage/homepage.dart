// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';

import 'mobile.dart';
import 'web.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static var mediaWidth;
  static var mediaHeight;

  @override
  Widget build(BuildContext context) {
    //
    mediaWidth = MediaQuery.of(context).size.width;
    mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          if (mediaWidth > 750)
            Expanded(
              child: HomepageWebBody(
                  mediaWidth: mediaWidth, mediaHeight: mediaHeight),
            ),
          if (mediaWidth < 750)
            Expanded(
              child: HomepageMobileBody(
                  mediaWidth: mediaWidth, mediaHeight: mediaHeight),
            ),
        ],
      ),
    );
  }
}
