// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/mobile_styles.dart';
import '../../constants/style.dart';

class HomepageMobileBody extends StatefulWidget {
  const HomepageMobileBody({
    super.key,
    required this.mediaWidth,
    required this.mediaHeight,
  });

  final mediaWidth;
  final mediaHeight;

  @override
  State<HomepageMobileBody> createState() => _HomepageMobileBodyState();
}

class _HomepageMobileBodyState extends State<HomepageMobileBody> {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool isDrawerOpen = false;

  void _toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
    if (isDrawerOpen) {
      scaffoldKey.currentState!.openEndDrawer();
      setState(() {
        isDrawerOpen = !isDrawerOpen;
      });
      // scaffoldKey.currentState!.openDrawer();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      endDrawer: drawerMethod(context, widget.mediaWidth),
      body: ListView(
        //main page Listview
        children: [
          Row(
            children: [
              SizedBox(
                width: widget.mediaWidth < 450 ? 20 : 5,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  "assets/logo.png",
                  width: 60,
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: _toggleDrawer,
                child: const Icon(
                  Icons.menu,
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            //third child of Listview
            children: [
              Stack(
                children: [
                  FittedBox(
                    child: Image.asset(
                      "assets/hall.png",
                      fit: BoxFit.cover,
                      width: widget.mediaWidth,
                      height: 330,
                    ),
                  ),
                  // Positioned(
                  //   right: 0,
                  //   left: 300,
                  //   child:
                  // ),
                  Positioned(
                    top: 160,
                    left: widget.mediaWidth * 0.05,
                    right: widget.mediaWidth * 0.05,
                    child: Container(
                      height: widget.mediaHeight * 0.49,
                      width: widget.mediaWidth * 0.86,
                      color: Colors.white.withOpacity(0.78),
                      child: Column(
                        children: [
                          const SizedBox(
                            height: 25,
                          ),
                          const FittedBox(
                              child: Text("Get personalised home interiors")),
                          FittedBox(
                            child: Text(
                              "in just 50 days",
                              style: mainMobileHeading,
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: widget.mediaWidth / 1.4,
                            height: widget.mediaHeight * 0.06,
                            decoration: const BoxDecoration(
                              // color: Color.fromARGB(255, 2, 0, 38),
                              color: Color(0xFF4B2A63),
                            ),
                            child: Center(
                              child: FittedBox(
                                child: Text(
                                  "   SPEAK WITH A ONLINE CONSULTANT   ",
                                  style: blueContainerTextMobile,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            //main Listview child
            child: Text(
              "Why LAND interiors",
              style: sideHeadlineStyleMobile,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            //main Listview child
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Spacer(
                flex: 1,
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/calendar.png",
                    width: 28,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("80 days or we\npay you rent"),
                ],
              ),
              const Spacer(flex: 2),
              Column(
                children: [
                  Image.asset(
                    "assets/smilyhome.png",
                    width: 28,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("1800+happy\ncustomers"),
                ],
              ),
              const Spacer(flex: 2),
              Column(
                children: [
                  Image.asset(
                    "assets/certificate.png",
                    width: 28,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text("300+ design\nexperties"),
                ],
              ),
              const Spacer(
                flex: 1,
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Stack(
            children: [
              Image.asset(
                "assets/hall2.png",
                fit: BoxFit.cover,
                height: widget.mediaHeight * 0.58,
                width: widget.mediaWidth,
              ),
              Container(
                width: widget.mediaWidth / 1.6,
                // height: 600,
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.6)),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 28,
                    right: 10,
                    top: 25,
                    bottom: 25,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Make your dream interior in",
                            style: sideHeadlineStyleMobile,
                          ),
                        ),
                      ),
                      FittedBox(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "3 easy steps",
                            style: mainHeadingMobile,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Explore",
                            style: sideHeadlineStyleMobile,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Explore more than just modular design\nideas with our experts.",
                            style: normalTextStyle,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Design",
                            style: sideHeadlineStyleMobile,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Complete the designs with painting, flooring\nand other decor solutions",
                            style: normalTextStyle,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Move-in",
                            style: sideHeadlineStyleMobile,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      FittedBox(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Move in with ease, with our hassle-free civil work\nand installation services.",
                            style: normalTextStyle,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
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

  drawerMethod(BuildContext context, double width) {
    return Drawer(
      width: width / 1.6,
      backgroundColor: Colors.white.withOpacity(0.88),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 110,
            child: DrawerHeader(
              duration: const Duration(seconds: 2),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.88),
              ),
              child: Text(
                'Menu',
                style: mainHeadingMobile,
              ),
            ),
          ),
          ListTile(
            title: const Text('About'),
            onTap: () {
              GoRouter.of(context).pushNamed("homepage");
            },
          ),
          ListTile(
            title: const Text('Project'),
            onTap: () {
              GoRouter.of(context).pushNamed("project");
            },
          ),
          ListTile(
            title: const Text('Studio'),
            onTap: () {
              GoRouter.of(context).pushNamed("studio");
            },
          ),
          ListTile(
            title: const Text('Blog'),
            onTap: () {
              GoRouter.of(context).pushNamed("blog");
            },
          ),
          ListTile(
            title: const Text('Contact'),
            onTap: () {
              GoRouter.of(context).pushNamed("about");
            },
          ),
        ],
      ),
    );
  }
}
