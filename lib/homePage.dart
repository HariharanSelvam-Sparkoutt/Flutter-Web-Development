import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.isDesktop) {
          return Scaffold(
            body: Container(
              padding: EdgeInsets.all(20),
              color: Colors.greenAccent,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Text('Title')],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Home'),
                      SizedBox(width: 20),
                      Text('Profile'),
                      SizedBox(width: 20),
                      Text('About'),
                    ],
                  ),
                ],
              ),
            ),
          );
        } else if (sizingInformation.isTablet) {
          return Scaffold(
            body: SafeArea(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    color: Colors.greenAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [Text('Title')],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text('Home'),
                            SizedBox(width: 20),
                            Text('Profile'),
                            SizedBox(width: 20),
                            Text('About'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          // Mobile layout with Drawer
          return Scaffold(
            drawer: Drawer(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(color: Colors.greenAccent),
                    child: const Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.info),
                    title: const Text('About'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                  ),
                ],
              ),
            ),
            body: SafeArea(
              child: Builder(
                builder: (context) {
                  return Column(children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Scaffold.of(context).openDrawer();
                          },
                          icon: Icon(Icons.menu),
                        ),
                      ],
                    ),
                  ]);
                },
              ),
            ),
          );
        }
      },
    );
  }
}
