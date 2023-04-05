import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:web_mobile_responsive_app/pages/homepage/homepage.dart';

import '../pages/about/about.dart';
import '../pages/blog/blog.dart';
import '../pages/project/project.dart';

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
            child: About(),
          );
        },
      ),
      GoRoute(
        path: "/project",
        name: "project",
        pageBuilder: (context, state) {
          return const MaterialPage(
            child: Project(),
          );
        },
      ),
      GoRoute(
        path: "/blog",
        name: "blog",
        pageBuilder: (context, state) {
          return MaterialPage(
            child: BlogPage(),
          );
        },
      ),
      // GoRoute(
      //   path: "/blog",
      //   name: "blog",
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: Homepage());
      //   },
      // ),
      // GoRoute(
      //   path: "/contact",
      //   name: "contact",
      //   pageBuilder: (context, state) {
      //     return const MaterialPage(child: Homepage());
      //   },
      // ),
    ],
  );
}
