import 'package:flutter/material.dart';
import 'package:web_app/aboutPage.dart';
import 'package:web_app/fetchData.dart';
import 'package:web_app/fetchModel.dart';
import 'package:web_app/homePage.dart';
import 'package:web_app/productsPage.dart';

class Mobproducts extends StatefulWidget {
  const Mobproducts({super.key});

  @override
  State<Mobproducts> createState() => _MobproductsState();
}

class _MobproductsState extends State<Mobproducts> {
  late Future<List<Welcome>> products;

  void initState() {
    super.initState();
    products = fetchData(); // Initialize the products Future
  }

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Aboutpage()));
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Builder(builder: (context) {
            return Row(
              children: [
                IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: Icon(Icons.menu),
                ),
              ],
            );
          }),
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
                        return ListTile(
                          title: Text(product!.title),
                          subtitle: Text('\$${product.price}'),
                          leading: Image.network(product.image,
                              width: 50, height: 50),
                        );
                      },
                    );
                  }
                }),
          ),
        ],
      )),
    );
  }
}
