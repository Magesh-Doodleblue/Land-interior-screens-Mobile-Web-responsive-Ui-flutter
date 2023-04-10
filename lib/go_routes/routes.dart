import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_mobile_responsive_app/pages/homepage/homepage.dart';

import '../pages/about/main_about.dart';
import '../pages/blog/main_blog.dart';
import '../pages/project/main_project.dart';

class RouterClass {
  GoRouter routes = GoRouter(
    routes: [
      GoRoute(
        path: "/",
        name: "homepage",
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: Homepage(),
          );
        },
      ),
      GoRoute(
        path: "/about",
        name: "about",
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: AboutMainPage(),
          );
        },
      ),
      GoRoute(
        path: "/project",
        name: "project",
        pageBuilder: (context, state) {
          return const MaterialPage(
            // child: Project(
            //   isHomeToProject: false,
            // ),
            child: ProjectPage(),
          );
        },
      ),
      GoRoute(
        path: "/blog",
        name: "blog",
        pageBuilder: (context, state) {
          return const MaterialPage(
            // child: BlogPage(
            //   isHomeToBlog: false,
            // ),
            child: BlogMainPage(),
          );
        },
      ),
    ],
  );
}
