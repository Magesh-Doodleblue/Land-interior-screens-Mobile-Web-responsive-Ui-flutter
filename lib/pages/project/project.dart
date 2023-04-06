// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_mobile_responsive_app/pages/project/web.dart';

import '../../constants/mobile_styles.dart';
import '../../constants/style.dart';
import 'mobile.dart';

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
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
    var mediaWidth = MediaQuery.of(context).size.width;
    var mediaHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      key: scaffoldKey,
      endDrawer: mediaWidth < 750
          ? Drawer(
              width: mediaWidth / 1.6,
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
            )
          : Container(),
      body: ListView(
        children: [
          SizedBox(
            height: mediaWidth > 750 ? 50 : 10,
          ),
          mediaWidth < 750
              ? Row(
                  children: [
                    SizedBox(
                      width: mediaWidth < 450 ? 20 : 5,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        "assets/logo.png",
                        width: 60,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: _toggleDrawer,
                      icon: const Icon(
                        Icons.menu,
                        size: 30,
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                )
              : Container(),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              "What we do?",
              style: mediaWidth > 750
                  ? sideHeadlineStyle
                  : sideHeadlineStyleMobile,
            ),
          ),
          SizedBox(
            height: mediaWidth > 750 ? 50 : 20,
          ),
          if (mediaWidth > 750)
            whatWeDoWebWidget(
              mediaWidth: mediaWidth,
              mediaHeight: mediaHeight,
            ),
          if (mediaWidth < 750)
            whatWeDoMobileWidget(
              mediaWidth: mediaWidth,
              mediaHeight: mediaHeight,
            ),
          SizedBox(
            height: mediaWidth > 750 ? 50 : 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Text(
                  textAlign: TextAlign.justify,
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor rhoncus dolor purus non enim praesent elementum facilisis leo, vel fringilla est ullamcorper eget nulla",
                  style: mediaWidth > 740
                      ? normalTextStyle
                      : normalTextStyleMobile,
                ),
              ),
            ),
          ),
          SizedBox(
            height: mediaWidth > 750 ? 50 : 20,
          ),
          if (mediaWidth > 750) webOurProjectsLayout(mediaWidth: mediaWidth),
          if (mediaWidth < 750) mobileOurProjectsLayout(mediaWidth: mediaWidth),
        ],
      ),
    );
  }
}
