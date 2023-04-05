// ignore_for_file: camel_case_types, deprecated_member_use, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

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
            height: 40,
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
          const Padding(
            padding: EdgeInsets.all(13),
            child: Text(
              textAlign: TextAlign.center,
              "  Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim",
              style: TextStyle(
                fontSize: 14,
              ),
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
            height: 50,
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  // textAlign: TextAlign.left,
                  "Let talk about your Dream home",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromARGB(255, 14, 0, 93),
                      fontWeight: FontWeight.w600),
                ),
                Center(
                  child: Padding(
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
                ),
                Center(
                  child: Padding(
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
            child: Image.asset("assets/logo.png"),
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: () async {
              openNewMailCompose(context);
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

  // Future launchEmailCompose() async {
  //   const url = 'mailto:landinteriors@gmail.com?subject=Hi&body=Sample';

  //   if (await canLaunch(url)) {
  //     await launch(url);
  //   }
  // }

  void openNewMailCompose(BuildContext context) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'https',
      host: 'mail.google.com',
      path: '/mail/u/0/compose',
      // queryParameters: {
      //   'compose': 'new',
      //   'subject': 'Hi',
      //   'body': 'Sample',
      // },
    );

    final String encodedUri = Uri.encodeFull(emailLaunchUri.toString());

    if (await canLaunch(encodedUri)) {
      await launch(encodedUri);
    } else {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('No email app found'),
            content: const Text('Please install an email app to send an email'),
            actions: [
              TextButton(
                child: const Text('OK'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }
}
