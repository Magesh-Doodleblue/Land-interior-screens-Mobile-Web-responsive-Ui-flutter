// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'package:flutter/material.dart';
import 'package:web_mobile_responsive_app/pages/blog/blog.dart';
import 'package:web_mobile_responsive_app/pages/project/project.dart';

import '../../constants/style.dart';
import '../about/about.dart';
import 'mobile.dart';
import 'web.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  static var mediaWidth;
  static var mediaHeight;

  bool project = false;
  bool blog = false;
  bool studio = false;
  bool contact = false;
  late bool home;

  @override
  void initState() {
    super.initState();
    home = true;
  }

  @override
  Widget build(BuildContext context) {
    //
    mediaWidth = MediaQuery.of(context).size.width;
    mediaHeight = MediaQuery.of(context).size.height;
    Row topRowWeb() {
      return Row(
        children: [
          const Spacer(
            flex: 1,
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                project = false;
                blog = false;
                home = true;

                studio = false;
                contact = false;
              });
            },
            child: Image.asset(
              "assets/logo.png",
            ),
          ),
          const Spacer(flex: 8),
          TextButton(
            onPressed: () {},
            child: Text(
              "Join as Design Expert",
              style: subheadlineStyle,
            ),
          ),
          const Spacer(flex: 1),
          TextButton(
            onPressed: () {},
            child: Text(
              "Partner with LAND interiors",
              style: subheadlineStyle,
            ),
          ),
          const Spacer(flex: 1),
        ],
      );
    }

    return Scaffold(
      body: Column(
        children: [
          mediaWidth > 750
              ? const SizedBox(
                  height: 30,
                )
              : const SizedBox(),
          mediaWidth > 750 ? topRowWeb() : Container(),
          mediaWidth > 750 ? appbarIconWidget() : Container(),
          const SizedBox(
            height: 30,
          ),
          home
              ? (mediaWidth > 750)
                  ? Expanded(
                      child: HomepageWebBody(
                          mediaWidth: mediaWidth, mediaHeight: mediaHeight),
                    )
                  : Expanded(
                      child: HomepageMobileBody(
                          mediaWidth: mediaWidth, mediaHeight: mediaHeight),
                    )
              : Container(),
          contact
              ? const Expanded(
                  child: About(),
                )
              : Container(),
          project
              ? const Expanded(
                  child: Project(),
                )
              : Container(),

          blog
              ? Expanded(
                  child: BlogPage(),
                )
              : Container(),
          // if (studio) const Expanded(child: Studio()),
        ],
      ),
    );
  }

  Row appbarIconWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            //Go router
            // GoRouter.of(context).pushNamed("about");
            setState(() {
              project = false;
              blog = false;
              home = true;
              studio = false;
              contact = false;
            });
          },
          child: Text(
            "About",
            style: appbarHeadlineStyle,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        TextButton(
          onPressed: () {
            // GoRouter.of(context).pushNamed("project");
            setState(() {
              project = true;
              blog = false;
              home = false;
              contact = false;
              studio = false;
            });
          },
          child: Text(
            "Project",
            style: appbarHeadlineStyle,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        TextButton(
          onPressed: () {
            // GoRouter.of(context).pushReplacement("/studio");
            setState(() {
              project = false;
              home = false;
              blog = false;
              studio = true;
              contact = false;
            });
          },
          child: Text(
            "Studio",
            style: appbarHeadlineStyle,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              // GoRouter.of(context).pushReplacement("/blog");
              project = false;
              blog = true;
              home = false;
              studio = false;
              contact = false;
            });
          },
          child: Text(
            "Blog",
            style: appbarHeadlineStyle,
          ),
        ),
        const SizedBox(
          width: 30,
        ),
        TextButton(
          onPressed: () {
            setState(() {
              // GoRouter.of(context).pushReplacement("/blog");
              project = false;
              blog = false;
              home = false;
              studio = false;
              contact = true;
            });
          },
          child: Text(
            "Contact",
            style: appbarHeadlineStyle,
          ),
        ),
      ],
    );
  }
}
