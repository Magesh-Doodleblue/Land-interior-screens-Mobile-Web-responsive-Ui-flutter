// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

import '../../constants/style.dart';

class HomepageWebBody extends StatefulWidget {
  const HomepageWebBody({
    super.key,
    required this.mediaWidth,
    required this.mediaHeight,
  });

  final mediaWidth;
  final mediaHeight;

  @override
  State<HomepageWebBody> createState() => _HomepageWebBodyState();
}

class _HomepageWebBodyState extends State<HomepageWebBody> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      //main page Listview
      children: [
        // topRowWeb(),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     TextButton(
        //       onPressed: () {
        //         //Go router
        //         GoRouter.of(context).pushNamed("about");
        //       },
        //       child: Text(
        //         "About",
        //         style: appbarHeadlineStyle,
        //       ),
        //     ),
        //     const SizedBox(
        //       width: 30,
        //     ),
        //     TextButton(
        //       onPressed: () {
        //         GoRouter.of(context).pushNamed("project");
        //       },
        //       child: Text(
        //         "Project",
        //         style: appbarHeadlineStyle,
        //       ),
        //     ),
        //     const SizedBox(
        //       width: 30,
        //     ),
        //     TextButton(
        //       onPressed: () {
        //         GoRouter.of(context).pushReplacement("/studio");
        //       },
        //       child: Text(
        //         "Studio",
        //         style: appbarHeadlineStyle,
        //       ),
        //     ),
        //     const SizedBox(
        //       width: 30,
        //     ),
        //     TextButton(
        //       onPressed: () {
        //         setState(() {
        //           GoRouter.of(context).pushReplacement("/blog");
        //         });
        //       },
        //       child: Text(
        //         "Blog",
        //         style: appbarHeadlineStyle,
        //       ),
        //     ),
        //     const SizedBox(
        //       width: 30,
        //     ),
        //     TextButton(
        //       onPressed: () {
        //         GoRouter.of(context).pushReplacement("/contact");
        //       },
        //       child: Text(
        //         "Contact",
        //         style: appbarHeadlineStyle,
        //       ),
        //     ),
        //   ],
        // ),
        // const SizedBox(
        //   height: 20,
        // ),
        Row(
          //third child of Listview
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/hall.png",
                  fit: BoxFit.cover,
                  width: widget.mediaWidth / 2,
                  height: widget.mediaHeight / 2,
                ),
                // Positioned(
                //   right: 0,
                //   left: 300,
                //   child:
                // ),
              ],
            ),
            Column(
              children: [
                const FittedBox(child: Text("Get personalised home interiors")),
                FittedBox(
                  child: Text(
                    "in just 50 days",
                    style: mainHeading,
                  ),
                ),
                Container(
                  width: widget.mediaWidth / 2.2,
                  height: widget.mediaHeight / 5,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 2, 0, 38),
                  ),
                  child: Center(
                    child: FittedBox(
                      child: Text(
                        "SPEAK WITH A ONLINE CONSULTANT",
                        style: blueContainerText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 70,
        ),
        Center(
          //main Listview child
          child: Text(
            "Why LAND interiors",
            style: sideHeadlineStyle,
          ),
        ),
        const SizedBox(
          height: 70,
        ),
        Row(
          //main Listview child
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(
              flex: 3,
            ),
            Column(
              children: [
                Image.asset("assets/calendar.png"),
                const SizedBox(
                  height: 8,
                ),
                const Text("80 days or we\npay you rent"),
              ],
            ),
            const Spacer(flex: 1),
            Column(
              children: [
                Image.asset("assets/smilyhome.png"),
                const SizedBox(
                  height: 8,
                ),
                const Text("1800+happy\ncustomers"),
              ],
            ),
            const Spacer(flex: 1),
            Column(
              children: [
                Image.asset("assets/certificate.png"),
                const SizedBox(
                  height: 8,
                ),
                const Text("300+ design\nexperties"),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Stack(
          children: [
            Positioned(
              child: Image.asset(
                "assets/bluehome.png",
                height: 900,
              ),
            ),
            Positioned(
              left: 400,
              // bottom: 100,
              right: 10,
              top: 30,
              child: SizedBox(
                height: 600,
                width: 1200,
                child: Image.asset(
                  "assets/hall2.png",
                  fit: BoxFit.cover,
                  // height: 600,
                  // height: widget.mediaHeight,
                ),
              ),
              // child: Image.network(
              //   "https://media.istockphoto.com/id/1293762741/photo/modern-living-room-interior-3d-render.jpg?s=612x612&w=0&k=20&c=iZ561ZIXOtPYGSzqlKUnLrliorreOYVz1pzu8WJmrnc=",
              //   fit: BoxFit.cover,
              //   height: widget.mediaHeight,
              //   width: 1200,
              // ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Container(
                width: widget.mediaWidth / 2.2,
                height: widget.mediaHeight * 0.89,
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
                child: FittedBox(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      FittedBox(
                        child: Text(
                          "Make your dream interior in",
                          style: sideHeadlineStyle,
                        ),
                      ),
                      FittedBox(
                        child: Text(
                          "3 easy steps",
                          style: mainHeading,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      FittedBox(
                        child: Text(
                          "Explore",
                          style: sideHeadlineStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: Text(
                          "Explore more than just modular design\n              ideas with our experts.",
                          style: normalTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      FittedBox(
                        child: Text(
                          "Design",
                          style: sideHeadlineStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      FittedBox(
                        child: Text(
                          "Complete the designs with painting, flooring\n              and other decor solutions",
                          style: normalTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      FittedBox(
                        child: Text(
                          "Move-in",
                          style: sideHeadlineStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      FittedBox(
                        child: Text(
                          "Move in with ease, with our hassle-free civil work\n              and installation services.",
                          style: normalTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
