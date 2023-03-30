import 'package:flutter/material.dart';

import '../../constants/style.dart';

class BlogWebLayout extends StatelessWidget {
  const BlogWebLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 38.0,
            top: 18,
            bottom: 20,
          ),
          child: Align(
            alignment: Alignment.topLeft,
            child: Text(
              "Blogs",
              style: sideHeadlineStyle,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 40, right: 20),
                    child: Image.asset(
                      "assets/blog1.png",
                      width: 260,
                      height: 260,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Modern Interior",
                    style: blogSideHeadingStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit ut\naliquam,",
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Image.asset(
                      "assets/blog2.png",
                      width: 260,
                      fit: BoxFit.cover,
                      height: 260,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Exterior Project",
                    style: blogSideHeadingStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit ut\naliquam,",
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Image.asset(
                      "assets/blog3.png",
                      width: 260,
                      height: 260,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Grey Beauty",
                    style: blogSideHeadingStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit ut\naliquam,",
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Image.asset(
                      "assets/blog4.png",
                      fit: BoxFit.cover,
                      width: 260,
                      height: 260,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Plantation interior",
                    style: blogSideHeadingStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit ut\naliquam,",
                  ),
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/blog5.png",
                    width: 260,
                    height: 260,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Role of furnitures",
                    style: blogSideHeadingStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit ut\naliquam,",
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        // Center(
        //   child: InkWell(
        //     child: Container(
        //       width: 199,
        //       height: 65,
        //       color: const Color.fromARGB(255, 14, 0, 93),
        //       child: const Center(
        //         child: Text(
        //           "View All",
        //           style: TextStyle(
        //             color: Colors.white,
        //             fontSize: 20,
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // ),
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
          height: 50,
        ),
        Center(
          child: Text(
            "Our Interior Design Products",
            style: sideHeadlineStyle,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Center(
          child: Wrap(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/blogpic5.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/blogpic2.png",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Image.asset(
                      "assets/blogpic3.png",
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/blogpic4.png",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/blogpic5.png",
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Center(
          child: Text(
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, \n      purus sit amet luctus venenatis, lectus magna fringilla urna,\n                   porttitor rhoncus dolor purus non enim",
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
      ],
    );
  }
}
