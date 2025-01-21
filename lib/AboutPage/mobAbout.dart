import 'package:flutter/material.dart';
import 'package:web_app/aboutPage.dart';
import 'package:web_app/homePage.dart';
import 'package:web_app/productsPage.dart';

class Mobabout extends StatefulWidget {
  const Mobabout({super.key});

  @override
  State<Mobabout> createState() => _MobaboutState();
}

class _MobaboutState extends State<Mobabout> {
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
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    _buildInfoCard('About Us',
                        'Welcome to E-Com, your one-stop destination for all your shopping needs! We are dedicated to providing you with a seamless shopping experience.'),
                    const SizedBox(height: 10),
                    _buildInfoCard('Our Mission',
                        'To empower our customers with a convenient, secure, and enjoyable shopping journey while delivering the best value for their money.'),
                    const SizedBox(height: 10),
                    _buildInfoCard('What We Offer',
                        '• A vast selection of products across various categories.\n• Competitive pricing and exclusive deals.\n• Easy-to-use platform for browsing and purchasing.'),
                    const SizedBox(height: 10),
                    _buildInfoCard('Why Choose Us?',
                        '• Quality Assurance.\n• Fast & Reliable Shipping.\n• 24/7 Customer Support.\n• Secure Payments.'),
                    const SizedBox(height: 10),
                    _buildInfoCard('Our Products',
                        'From the latest tech gadgets to trendy clothing, home essentials, beauty products, and much more, we offer a diverse range of items to cater to your every need. All of our products go through strict quality checks to ensure that they meet your expectations.'),
                    const SizedBox(height: 10),
                    _buildInfoCard('Our Team',
                        'We’re a passionate team of individuals committed to bringing you the best products and service possible. Behind the scenes, our dedicated staff work tirelessly to ensure your shopping experience is smooth and enjoyable'),
                    const SizedBox(height: 10),
                    _buildInfoCard('Our Vision',
                        'We aim to revolutionize shopping with convenience, quality, and affordability, making every experience enjoyable.'),
                    const SizedBox(height: 10),
                    _buildInfoCard('Get In Touch',
                        'Email: support@yopmail.com\nPhone: 0123456789\nAddress: XXXXXXXXXXX'),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }

  Widget _buildInfoCard(String title, String content) {
    return Container(
      width: double
          .infinity, // Ensures the card takes the full width of its parent
      margin: EdgeInsets.symmetric(vertical: 5), // Adds spacing between cards
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              const SizedBox(height: 8),
              Text(
                content,
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
