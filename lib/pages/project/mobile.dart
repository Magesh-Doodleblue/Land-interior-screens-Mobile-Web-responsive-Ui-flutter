// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

import '../../constants/mobile_styles.dart';

class whatWeDoMobileWidget extends StatelessWidget {
  var mediaHeight;
  var mediaWidth;

  whatWeDoMobileWidget({
    super.key,
    required this.mediaWidth,
    required this.mediaHeight,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://th.bing.com/th/id/R.6a78dcc33857f08821fd5af531b9b136?rik=sVwxIEdqvojLKQ&riu=http%3a%2f%2fwww.decorationlove.com%2fwp-content%2fuploads%2f2016%2f09%2fModern-Kitchen-Cabinet-Design.jpg&ehk=qOuuB619iqsM5nUf1YCwnGCHw2%2bAfDUxKZcVXcVkEgI%3d&risl=&pid=ImgRaw&r=0",
                      fit: BoxFit.cover,
                      width: mediaWidth * 0.42,
                      height: 160,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Modular Kitchen",
                    style: projectSideHeadingStyleMobile,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://i0.wp.com/magzhouse.com/wp-content/uploads/2019/09/Incredible-Modern-Bedroom-Design-Ideas-19.jpg?ssl=1",
                      fit: BoxFit.cover,
                      width: mediaWidth * 0.42,
                      height: 160,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Bedroom",
                    style: projectSideHeadingStyleMobile,
                  ),
                ],
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://th.bing.com/th/id/R.c0a9abbb633d57748635e9cfbe4de63b?rik=UDUeNk6SCJhcdg&riu=http%3a%2f%2froohome.com%2fwp-content%2fuploads%2f2016%2f11%2fAnastasia-Finko.jpg&ehk=zHVgUdXMaXPGVR1pCHqNF55ACwxk8Q9L4BHbJsC2wXs%3d&risl=&pid=ImgRaw&r=0",
                      fit: BoxFit.cover,
                      width: mediaWidth * 0.42,
                      height: 160,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Living Room",
                    style: projectSideHeadingStyleMobile,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.network(
                      "https://i0.wp.com/homyhomee.com/wp-content/uploads/2020/02/Gorgeous-Modern-Office-Interior-Design-Ideas-You-Never-Seen-Before-17.jpg?fit=1024%2C1280&ssl=1",
                      fit: BoxFit.cover,
                      width: mediaWidth * 0.42,
                      height: 160,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    "Home Office",
                    style: projectSideHeadingStyleMobile,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class mobileOurProjectsLayout extends StatelessWidget {
  const mobileOurProjectsLayout({
    super.key,
    required this.mediaWidth,
  });

  final double mediaWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 40),
              child: Text(
                "Our Projects",
                style: sideHeadlineStyleMobile,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Wrap(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      "https://th.bing.com/th/id/R.1fec30866582beb4ef0134d6c87ee72b?rik=mErT6%2b1fdzrSZA&riu=http%3a%2f%2fcdn.decoist.com%2fwp-content%2fuploads%2f2016%2f10%2fStunning-live-edge-office-desk-for-the-exceptional-contemporary-home-office.jpg&ehk=miB023LjShqZeZdidX4noZgRYs37adw9Yb86JTaI%2fJI%3d&risl=&pid=ImgRaw&r=0",
                      width: mediaWidth / 2.3,
                      fit: BoxFit.cover,
                      height: 270,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      "https://th.bing.com/th/id/R.8fc1d426aaaa5b6cd29b4857e9ff174c?rik=zAoChWxweP5B6Q&riu=http%3a%2f%2f1.bp.blogspot.com%2f--JijrjuTuQE%2fTh89y--UXHI%2fAAAAAAAAAjc%2fCVBzGgP1Dww%2fs1600%2fModern%2bOffice%2bInterior%2bDesign.jpg&ehk=Fn1BpWbg6%2bfFBg2tNTKy7o31SVKYhCqnfKKZ%2fdahSew%3d&risl=&pid=ImgRaw&r=0",
                      width: mediaWidth / 2.3,
                      fit: BoxFit.cover,
                      height: 270,
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      "https://mir-s3-cdn-cf.behance.net/project_modules/1400/8a065c61967137.5a8058c4288b9.jpg",
                      width: mediaWidth / 2.3,
                      fit: BoxFit.cover,
                      height: 270,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.network(
                      "https://th.bing.com/th/id/R.98c7c36df7a2ad4c9d4285e24a5800f6?rik=LBD9vl8A3ClgRA&riu=http%3a%2f%2fwww.dwellingdecor.com%2fwp-content%2fuploads%2f2016%2f10%2fStudio-modern-Living-Room-Design.jpg&ehk=4kabq8UVk6X2i4HO3fIXisPImIgrmszeleNd9CLdv00%3d&risl=&pid=ImgRaw&r=0",
                      width: mediaWidth / 2.3,
                      fit: BoxFit.cover,
                      height: 270,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            width: mediaWidth / 1.2,
            decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
            child: Column(
              children: [
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Our Projects",
                  style: sideHeadlineStyleMobile,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla",
                  style: normalTextStyleMobile,
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla",
                  style: normalTextStyleMobile,
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: InkWell(
                    child: Container(
                      width: 130,
                      height: 48,
                      color: const Color.fromARGB(255, 14, 0, 93),
                      child: const Center(
                        child: Text(
                          "View All",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
