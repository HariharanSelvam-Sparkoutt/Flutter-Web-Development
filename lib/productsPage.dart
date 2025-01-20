import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/Products/mobProducts.dart';
import 'package:web_app/Products/tabProducts.dart';
import 'package:web_app/Products/webProducts.dart';

class Productspage extends StatelessWidget {
  const Productspage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return Webproducts();
        } else if (sizingInformation.isTablet) {
          return Tabproducts();
        } else {
          return Mobproducts();
        }
      },
    );
    // return ScreenTypeLayout.builder(
    //   desktop: (BuildContext context) => Webproducts(),
    //   tablet: (BuildContext context) => Tabproducts(),
    //   mobile: (BuildContext context) => Mobproducts(),
    // );
  }
}
