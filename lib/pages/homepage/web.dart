import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
  Row topRowWeb() {
    return Row(
      children: [
        const Spacer(
          flex: 1,
        ),
        Image.asset(
          "assets/logo.png",
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

  @override
  Widget build(BuildContext context) {
    return ListView(
      //main page Listview
      children: [
        topRowWeb(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                //Go router
                GoRouter.of(context).pushNamed("about");
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
                GoRouter.of(context).pushNamed("project");
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
                GoRouter.of(context).pushReplacement("/studio");
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
                  GoRouter.of(context).pushReplacement("/blog");
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
                GoRouter.of(context).pushReplacement("/contact");
              },
              child: Text(
                "Contact",
                style: appbarHeadlineStyle,
              ),
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
              left: 400,
              bottom: 100,
              right: 0,
              top: 0,
              // child: Image.asset(
              //   "assets/hall2.png",
              //   fit: BoxFit.cover,
              //   height: 900,
              //   width: 1200,
              // ),
              child: Image.network(
                "https://media.istockphoto.com/id/1293762741/photo/modern-living-room-interior-3d-render.jpg?s=612x612&w=0&k=20&c=iZ561ZIXOtPYGSzqlKUnLrliorreOYVz1pzu8WJmrnc=",
                fit: BoxFit.cover,
                height: 900,
                width: 1200,
              ),
            ),
            Container(
              width: widget.mediaWidth / 2.2,
              decoration: BoxDecoration(color: Colors.white.withOpacity(0.5)),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Make your dream interior in",
                    style: sideHeadlineStyle,
                  ),
                  Text(
                    "3 easy steps",
                    style: mainHeading,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Explore",
                    style: sideHeadlineStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Explore more than just modular design\n              ideas with our experts.",
                    style: normalTextStyle,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Design",
                    style: sideHeadlineStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Complete the designs with painting, flooring\n              and other decor solutions",
                    style: normalTextStyle,
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Move-in",
                    style: sideHeadlineStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Move in with ease, with our hassle-free civil work\n              and installation services.",
                    style: normalTextStyle,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
