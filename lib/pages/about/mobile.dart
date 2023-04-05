// ignore_for_file: camel_case_types

import 'package:external_app_launcher/external_app_launcher.dart';
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
            height: 20,
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
            height: 30,
          ),
          const Text(
            textAlign: TextAlign.center,
            "  Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim",
            style: TextStyle(
              fontSize: 14,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/left.png",
                width: 10,
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                "assets/aboutmobile.png",
                width: mediaWidth * 0.7,
              ),
              const SizedBox(
                width: 5,
              ),
              Image.asset(
                "assets/right.png",
                width: 10,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: Column(
              children: [
                const Text(
                  textAlign: TextAlign.left,
                  "Let talk about your Dream home",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 14, 0, 93),
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: mediaWidth * 0.85,
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
                    width: mediaWidth * 0.85,
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
          GestureDetector(
            onTap: () async {
              // await LaunchApp.openApp(
              //   androidPackageName: 'net.pulsesecure.pulsesecure',
              //   iosUrlScheme: 'pulsesecure://',
              //   appStoreLink:
              //       'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
              //   // openStore: false
              // );
              await LaunchApp.openApp(
                androidPackageName: 'com.google.android.gm',
                iosUrlScheme: 'googlegmail://',
                appStoreLink:
                    'itms-apps://itunes.apple.com/us/app/gmail-email-by-google/id422689480',
              );

              // Enter the package name of the App you want to open and for iOS add the URLscheme to the Info.plist file.
              // The `openStore` argument decides whether the app redirects to PlayStore or AppStore.
              // For testing purpose you can enter com.instagram.android
            },
            child: const Text(
              "landinteriors@gmail.com\n        +91 98987 65656",
            ),
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
