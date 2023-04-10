// ignore_for_file: prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../constants/mobile_styles.dart';
import 'mobile.dart';
import 'web.dart';

class BlogPage extends StatefulWidget {
  BlogPage({
    super.key,
  });
  var mediaWidth;
  var mediaHeight;

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            mediaWidth < 450
                ? const SizedBox(
                    height: 50,
                  )
                : const SizedBox(),
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
            if (mediaWidth > 740) const BlogWebLayout(),
            if (mediaWidth < 740) const BlogMobileLayout(),
          ],
        ),
      ),
    );
  }
}
