import 'package:flutter/material.dart';

import 'mobile.dart';
import 'web.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});
  static var mediaWidth;
  static var mediaHeight;
  @override
  Widget build(BuildContext context) {
    mediaWidth = MediaQuery.of(context).size.width;
    mediaHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (mediaWidth > 740) const BlogWebLayout(),
            if (mediaWidth < 740) const BlogMobileLayout(),
          ],
        ),
      ),
    );
  }
}
