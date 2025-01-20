import 'package:flutter/material.dart';
import 'package:web_app/Products/webProducts.dart';
import 'package:web_app/aboutPage.dart';
import 'package:web_app/homePage.dart';
import 'package:web_app/productsPage.dart';

class WebHomePage extends StatelessWidget {
  const WebHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(children: [
                Container(
                  padding: EdgeInsets.all(20),
                  color: Colors.greenAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text('E-Com',
                              style: TextStyle(
                                  color: Colors.redAccent,
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextButton(
                            child: Text('Home'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Homepage()));
                            },
                          ),
                          SizedBox(width: 20),
                          TextButton(
                            child: Text('Products'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Productspage()));
                            },
                          ),
                          SizedBox(width: 20),
                          TextButton(
                            child: Text('About'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Aboutpage()));
                            },
                          ),
                        ],
                      ),
                    ],
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
                )
              ]),
              Container(
                  color: Colors.black,
                  child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Productspage()));
                      },
                      child: Text(
                        'Click To View Products',
                        style: TextStyle(color: Colors.white),
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
