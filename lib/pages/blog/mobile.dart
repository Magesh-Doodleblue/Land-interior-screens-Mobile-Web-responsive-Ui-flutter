import 'package:flutter/material.dart';

import '../../constants/mobile_styles.dart';
import '../../constants/style.dart';

class BlogMobileLayout extends StatelessWidget {
  const BlogMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 14, left: 14),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Blogs",
              style: sideHeadlineStyle,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/blog1.png",
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Modern Interior",
                    style: blogSideHeadingStyleMobile,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit ut\naliquam,",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/blog2.png",
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Exterior Project",
                    style: blogSideHeadingStyleMobile,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit ut\naliquam,",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/blog3.png",
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Grey Beauty",
                    style: blogSideHeadingStyleMobile,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit ut\naliquam,",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/blog4.png",
                    fit: BoxFit.cover,
                    width: 150,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Plantation interior",
                    style: blogSideHeadingStyleMobile,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit ut\naliquam,",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/blog5.png",
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Role of furnitures",
                    style: blogSideHeadingStyleMobile,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit ut\naliquam,",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
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
        Center(
          child: Text(
            "Our Interior Design Products",
            style: sideHeadlineStyleMobile,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/blogpic.jpg",
              width: 300,
              height: 400,
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing\nelit ut aliquam, purus sit amet luctus venenatis,\nlectus magna fringilla urna, porttitor rhoncus dolor\npurus non enim",
                style: TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
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
          height: 20,
        ),
      ],
    );
  }
}
