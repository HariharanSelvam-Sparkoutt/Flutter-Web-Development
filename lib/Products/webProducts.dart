import 'package:flutter/material.dart';
import 'package:web_app/aboutPage.dart';
import 'package:web_app/fetchData.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:web_app/fetchModel.dart';
import 'package:web_app/homePage.dart';
import 'package:web_app/productsPage.dart';

class Webproducts extends StatefulWidget {
  const Webproducts({super.key});

  @override
  State<Webproducts> createState() => _WebproductsState();
}

class _WebproductsState extends State<Webproducts> {
  late Future<List<Welcome>> products;

  void initState() {
    super.initState();
    products = fetchData(); // Initialize the products Future
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(children: [
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Homepage()));
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
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Aboutpage()));
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Flexible(
          child: FutureBuilder<List<Welcome>>(
              future: products,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
                  return Center(child: Text('No products available'));
                } else {
                  final productsFetched = snapshot.data;
                  return ListView.builder(
                    itemCount: productsFetched?.length,
                    itemBuilder: (context, index) {
                      final product = productsFetched?[index];
                      return Padding(
                        padding: EdgeInsets.fromLTRB(50, 10, 50, 10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 250,
                                    width: 250,
                                    child: Image.network(product!.image),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12)),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Flexible(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          product.title,
                                          style: TextStyle(
                                              fontSize: 21,
                                              fontWeight: FontWeight.bold),
                                          softWrap: true,
                                          // maxLines: 2,
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(product.category),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(product.description),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('Price: ${product.price}'),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text('Rating: ${product.rating.rate}')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 15,
                              )
                            ]),
                      );
                    },
                  );
                }
              }),
        ),
      ])),
    );
  }
}
