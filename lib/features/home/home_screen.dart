import 'package:flutter/material.dart';
import 'package:ride/features/care/care_screen.dart';
import 'package:ride/features/widgets/custom_appbar.dart';
import 'package:ride/features/widgets/custom_title.dart';
import 'package:ride/features/widgets/item_cards.dart';
import 'package:ride/features/widgets/service_card.dart';
import 'package:ride/features/widgets/users_tile.dart';

import '../widgets/service_widgets.dart';
import '../widgets/travel_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> nearbyUsers = [
      {'imageUrl': 'assets/images/Ellipse 40.png', 'name': 'Alice'},
      {'imageUrl': 'assets/images/Ellipse 41.png', 'name': 'Bob'},
      {'imageUrl': 'assets/images/Ellipse 43.png', 'name': 'Charlie'},
      {'imageUrl': 'assets/images/Ellipse 44.png', 'name': 'Ankita'},
      {'imageUrl': 'assets/images/Ellipse 45.png', 'name': 'Manish'},
      {'imageUrl': 'assets/images/Ellipse 49.png', 'name': 'Suresh'},
    ];
    List<Map<String, dynamic>> items = [
      {
        'imageUrl': 'assets/images/Rectangle 315-4.png',
        'title': 'Racing Dual Visor Helmet',
        'price': '4079',
        'originalPrice': '5099',
        'discount': '20',
        'rating': 4.8,
        'reviewsCount': 212,
      },
      {
        'imageUrl': 'assets/images/Rectangle 315-5.png',
        'title': 'Aerodynamic Helmet',
        'price': '2799',
        'originalPrice': '3499',
        'discount': '20',
        'rating': 4.5,
        'reviewsCount': 154,
      },
      {
        'imageUrl': 'assets/images/Rectangle 315-4.png',
        'title': 'Racing Dual Visor Helmet',
        'price': '4079',
        'originalPrice': '5099',
        'discount': '20',
        'rating': 4.8,
        'reviewsCount': 212,
      },
      {
        'imageUrl': 'assets/images/Rectangle 315-5.png',
        'title': 'Aerodynamic Helmet',
        'price': '2799',
        'originalPrice': '3499',
        'discount': '20',
        'rating': 4.5,
        'reviewsCount': 154,
      },
    ];
    final List<Map<String, dynamic>> services = [
      {
        'imageUrl': 'assets/images/Rectangle 315-3.png',
        'title': 'Teflon Coating',
        'price': '1000',
        'originalPrice': '9000',
        'discount': '10',
      },
      {
        'imageUrl': 'assets/images/Rectangle 315.png',
        'title': 'Car Wash',
        'price': '500',
        'originalPrice': '1500',
        'discount': '20',
      },
      {
        'imageUrl': 'assets/images/Rectangle 315-1.png',
        'title': 'Engine Polishing',
        'price': '1200',
        'originalPrice': '4000',
        'discount': '25',
      },
      {
        'imageUrl': 'assets/images/Rectangle 315-2.png',
        'title': 'Interior Detailing',
        'price': '2000',
        'originalPrice': '5000',
        'discount': '15',
      },
    ];
    final List<Map<String, dynamic>> travelCards = [
      {
        'imageUrl': 'assets/images/Rectangle 172.png',
        'title': 'Shimla to Manali',
        'userImages': [
          'assets/images/Ellipse 40.png',
          'assets/images/Ellipse 41.png',
          'assets/images/Ellipse 43.png',
        ],
        'extraUserCount': 12,
      },
      {
        'imageUrl': 'assets/images/Rectangle 173.png',
        'title': 'Delhi to Jaipur',
        'userImages': [
          'assets/images/Ellipse 40.png',
          'assets/images/Ellipse 41.png',
          'assets/images/Ellipse 43.png',
        ],
        'extraUserCount': 8,
      },
      {
        'imageUrl': 'assets/images/Rectangle 174.png',
        'title': 'Goa Road Trip',
        'userImages': [
          'assets/images/Ellipse 40.png',
          'assets/images/Ellipse 41.png',
          'assets/images/Ellipse 43.png',
        ],
        'extraUserCount': 5,
      },
    ];

    return Scaffold(
      appBar: CustomAppbar(title: "Home"),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CareScreen()),
          );
        },
        shape: StadiumBorder(),
        backgroundColor: Colors.blue,
        child: Icon(Icons.arrow_forward_ios),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTitle(title: 'Nearby Users', onPressed: () {}),
            Container(
              padding: const EdgeInsets.only(left: 20),
              height: 120,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: nearbyUsers.length,
                itemBuilder: (context, index) => UsersTile(
                  imageUrl: nearbyUsers[index]['imageUrl'],
                  name: nearbyUsers[index]['name'],
                ),
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(width: 16);
                },
              ),
            ),
            CustomTitle(title: 'Deals of the Day', onPressed: () {}),
            const SizedBox(height: 20),
            SizedBox(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ItemCards(
                  imageUrl: items[index]['imageUrl'],
                  title: items[index]['title'],
                  price: items[index]['price'],
                  originalPrice: items[index]['originalPrice'],
                  discount: items[index]['discount'],
                  rating: items[index]['rating'],
                  reviewsCount: items[index]['reviewsCount'],
                ),
                itemCount: items.length,
              ),
            ),
            const SizedBox(height: 20),
            CustomTitle(title: 'Upcoming Events', onPressed: () {}),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                itemCount: travelCards.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) => TravelCard(
                  imageUrl: travelCards[index]['imageUrl'],
                  title: travelCards[index]['title'],
                  userImages: travelCards[index]['userImages'],
                  extraUserCount: travelCards[index]['extraUserCount'],
                ),
              ),
            ),
            const SizedBox(height: 20),
            ServiceWidgets(services: services),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
