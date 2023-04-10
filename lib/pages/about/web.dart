// ignore_for_file: public_member_api_docs, sort_constructors_first, camel_case_types
import 'package:flutter/material.dart';

import '../../constants/style.dart';

class aboutWebLayout extends StatelessWidget {
  const aboutWebLayout({
    Key? key,
    required this.mediaHeight,
    required this.mediaWidth,
  }) : super(key: key);

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
          Text(
            textAlign: TextAlign.center,
            "Our Happy Costumers",
            style: sideHeadlineStyle,
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 46.0),
            child: Text(
              textAlign: TextAlign.justify,
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim",
            ),
          ),
          SizedBox(
            height: mediaWidth > 750 ? 30 : 1,
          ),
          Image.asset(
            "assets/aboutweb.png",
            width: mediaWidth * 0.78,
          ),
          // SizedBox(
          //   // color: Colors.amber,
          //   height: mediaHeight / 1.61,
          //   child: Stack(
          //     children: [
          //       SingleChildScrollView(
          //         child: Column(
          //           children: [
          //             Align(
          //               alignment: Alignment.topCenter,
          //               child: Image.asset(
          //                 "assets/aboutbg.png",
          //                 width: mediaWidth * 0.80,
          //                 height: mediaHeight / 2,
          //               ),
          //             ),
          //           ],
          //         ),
          //       ),
          //       Positioned(
          //         left: mediaWidth * 0.340,
          //         top: 210,
          //         child: SizedBox(
          //           width: mediaWidth * 0.34,
          //           // color: Colors.black,
          //           // color: Colors.white.withOpacity(0.9),
          //           child: Card(
          //             color: Colors.white.withOpacity(0.99),
          //             elevation: 30,
          //             child: Column(
          //               mainAxisAlignment: MainAxisAlignment.center,
          //               children: [
          //                 const SizedBox(
          //                   height: 60,
          //                 ),
          //                 const Text(
          //                   "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit ut aliquam, purus sit amet luctus venenatis, lectus\nmagna fringilla urna, porttitor",
          //                 ),
          //                 const SizedBox(
          //                   height: 30,
          //                 ),
          //                 Text(
          //                   "-Jeo Stanlee",
          //                   style: nameFontStyle,
          //                 ),
          //                 const SizedBox(
          //                   height: 30,
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //       ),
          //       Positioned(
          //         top: mediaHeight * 0.14,
          //         left: mediaWidth * 0.462,
          //         child: Image.asset(
          //           "assets/person.png",
          //         ),
          //       ),
          //     ],
          //   ),
          // ),

          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 48.0),
              child: Text(
                // textAlign: TextAlign.left,
                "Let talk about your Dream home",
                style: talkingtextStyle,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Spacer(
                flex: 2,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: mediaWidth / 2.7,
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
                  width: mediaWidth / 2.7,
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
                width: 20,
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
              const Spacer(
                flex: 8,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Image.asset("logo.png"),
                ),
                const Spacer(flex: 4),
                // Text(
                //   "WHAT WE DO",
                //   style: TextStyle(
                //     color: Colors.black.withOpacity(0.90),
                //   ),
                // ),
                // const Spacer(flex: 2),
                // Text(
                //   "Get in touch",
                //   style: TextStyle(
                //     color: Colors.black.withOpacity(0.90),
                //   ),
                // ),
                // const Spacer(flex: 2),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: const [
              Spacer(flex: 1),
              Text(
                "We introduce our selves as LAND Interior and\nArchitectural Design Consultancy one of the\nbest interior designers in Chennai.\nChennai Luxury Interior and Architectural Design\nConsultancy has challenged the\nconventional way of interior designing and given new\ndimensions to the art of interior designing.",
              ),
              Spacer(flex: 7),
              Text(
                "WHAT WE DO?\n\nInterior Design\nKitchen\nCeiling\nBedroom\nSmart Home",
              ),
              Spacer(flex: 5),
              Text(
                "Get in touch\n\nlandinteriors@gmail.com\n+91 98987 65656",
              ),
              Spacer(flex: 5),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
