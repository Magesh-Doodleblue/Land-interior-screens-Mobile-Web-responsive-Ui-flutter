// ignore_for_file: non_constant_identifier_names, avoid_types_as_parameter_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'go_routes/routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // @override
  // Widget build(BuildContext context) {
  //   return Sizer(
  //     builder: (BuildContext, Orientation, DeviceType) {
  //       return MaterialApp.router(
  //         debugShowCheckedModeBanner: false,
  //         theme: ThemeData(
  //           textTheme: GoogleFonts.poppinsTextTheme(
  //             Theme.of(context).textTheme,
  //           ),
  //         ),
  //         routeInformationParser: RouterClass().routes.routeInformationParser,
  //         routerDelegate: RouterClass().routes.routerDelegate,
  //       );
  //     },
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      routeInformationParser: RouterClass().routes.routeInformationParser,
      routerDelegate: RouterClass().routes.routerDelegate,
    );
  }
}
