import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/AboutPage/mobAbout.dart';
import 'package:web_app/AboutPage/tabAbout.dart';
import 'package:web_app/AboutPage/webAbout.dart';

class Aboutpage extends StatefulWidget {
  const Aboutpage({super.key});

  @override
  State<Aboutpage> createState() => _AboutpageState();
}

class _AboutpageState extends State<Aboutpage> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      if (sizingInformation.isDesktop) {
        return Webabout();
      } else if (sizingInformation.isTablet) {
        return Tababout();
      } else {
        return Mobabout();
      }
    });
  }
}
