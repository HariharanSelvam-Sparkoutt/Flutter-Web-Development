import 'package:flutter/material.dart';
import 'package:web_app/Products/mobProducts.dart';
import 'package:web_app/homePage.dart';
import 'package:web_app/productsPage.dart';

class Mobhomepage extends StatelessWidget {
  const Mobhomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.greenAccent),
              child: const Text(
                'E-Com',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Homepage()));
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Products'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Productspage()));
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
            return SingleChildScrollView(
              child: Column(children: [
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
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.cyanAccent),
                      child: Text(
                          "Our latest innovation combines cutting-edge technology with sleek design, delivering a seamless experience like never before. Crafted with precision and engineered for durability, this product redefines convenience and performance. Whether you're at home, in the office, or on the go, it adapts effortlessly to your needs. Packed with advanced features, it ensures reliability, efficiency, and user satisfaction. Experience the perfect blend of functionality and style—because you deserve nothing but the best. Transform the way you work, play, and live with this game-changing solution."),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.cyanAccent),
                      child: Text(
                          "Our latest innovation combines cutting-edge technology with sleek design, delivering a seamless experience like never before. Crafted with precision and engineered for durability, this product redefines convenience and performance. Whether you're at home, in the office, or on the go, it adapts effortlessly to your needs. Packed with advanced features, it ensures reliability, efficiency, and user satisfaction. Experience the perfect blend of functionality and style—because you deserve nothing but the best. Transform the way you work, play, and live with this game-changing solution."),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Center(
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.cyanAccent),
                      child: Text(
                          "Our latest innovation combines cutting-edge technology with sleek design, delivering a seamless experience like never before. Crafted with precision and engineered for durability, this product redefines convenience and performance. Whether you're at home, in the office, or on the go, it adapts effortlessly to your needs. Packed with advanced features, it ensures reliability, efficiency, and user satisfaction. Experience the perfect blend of functionality and style—because you deserve nothing but the best. Transform the way you work, play, and live with this game-changing solution."),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(12),
                  child: Row(children: [
                    Expanded(
                      child: Container(
                          color: Colors.black,
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Click To View Products',
                                style: TextStyle(color: Colors.white),
                              ))),
                    ),
                  ]),
                )
              ]),
            );
          },
        ),
      ),
    );
  }
}
