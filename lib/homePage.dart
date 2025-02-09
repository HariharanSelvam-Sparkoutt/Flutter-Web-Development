import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/Homepage/mobHomePage.dart';
import 'package:web_app/Homepage/tabHomePage.dart';
import 'package:web_app/Homepage/webHomePage.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return WebHomePage();
        } else if (sizingInformation.isTablet) {
          return Tabhomepage();
        } else {
          return Mobhomepage();
        }
      },
    );
  }
}
