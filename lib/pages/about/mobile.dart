// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../constants/mobile_styles.dart';

class aboutMobileLayout extends StatelessWidget {
  const aboutMobileLayout({
    super.key,
    required this.mediaHeight,
    required this.mediaWidth,
  });

  final double mediaHeight;
  final double mediaWidth;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: mediaWidth * 0.09),
              child: Text(
                // textAlign: TextAlign.center,
                "Our Happy Costumers",
                style: mobileHeading,
              ),
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const Text(
            textAlign: TextAlign.center,
            "  Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet \nluctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim",
            style: TextStyle(
              fontSize: 10,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Stack(
            children: [
              Image.asset(
                "assets/mobile_about.png",
                width: mediaWidth * 0.80,
                height: mediaHeight / 1.4,
              ),
              Positioned(
                left: mediaWidth * 0.04,
                top: 130,
                child: SizedBox(
                  width: mediaWidth / 1.75,
                  child: Card(
                    color: Colors.white.withOpacity(0.99),
                    elevation: 30,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        SizedBox(
                          height: 60,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit ut aliquam, purus sit amet luctus venenatis, lectus\nmagna fringilla urna, porttitor",
                          style: TextStyle(fontSize: 10),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Text(
                          "-Jeo Stanlee",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                // top: mediaHeight * 0.14,
                left: 100,
                child: Image.asset(
                  "assets/person.png",
                  width: mediaWidth / 3.1,
                  // height: 78,
                ),
              ),
            ],
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 78.0),
              child: Text(
                // textAlign: TextAlign.left,
                "Let talk about your Dream home",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: mediaWidth * 0.75,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Name",
                        hintStyle: TextStyle(),
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: BorderSide.strokeAlignCenter),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: mediaWidth * 0.75,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Phone / Email",
                        hintStyle: TextStyle(),
                        border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: BorderSide.strokeAlignCenter),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 140,
                  height: 45,
                  color: const Color.fromARGB(255, 14, 0, 93),
                  child: const Center(
                    child: Text(
                      "Send",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset("logo.png"),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "landinteriors@gmail.com\n        +91 98987 65656",
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/facebook.png",
                width: 26,
              ),
              const SizedBox(
                width: 3,
              ),
              Image.asset(
                "assets/linkedin.png",
                width: 26,
              ),
              const SizedBox(
                width: 3,
              ),
              Image.asset(
                "assets/twitter.png",
                width: 26,
              ),
              const SizedBox(
                width: 3,
              ),
              Image.asset(
                "assets/youtube.png",
                width: 26,
              ),
              const SizedBox(
                width: 3,
              ),
              Image.asset(
                "assets/insta.png",
                width: 26,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
