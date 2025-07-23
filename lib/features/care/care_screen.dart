import 'package:flutter/material.dart';
import 'package:ride/features/home/home_screen.dart';
import 'package:ride/features/widgets/custom_appbar.dart';
import 'package:ride/features/widgets/custom_title.dart';
import 'package:ride/features/widgets/recommendation_card.dart';

import '../widgets/service_widgets.dart';

class CareScreen extends StatelessWidget {
  const CareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> recommendations = [
      {'imageUrl': 'assets/images/Rectangle 334.png', 'title': 'Spark Plug'},
      {'imageUrl': 'assets/images/Rectangle 334-1.png', 'title': 'Clutch Shoe'},
      {'imageUrl': 'assets/images/Rectangle 334-2.png', 'title': 'Hose Fuel'},
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

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(title: 'Care'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Bike Name',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Change',
                    style: TextStyle(
                      color: Color(0xFF584CF4),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Container(color: Color(0xFFF5F5F5), height: 5),
            CustomTitle(title: 'Care Recommendation', onPressed: () {}),
            SizedBox(
              height: 150,
              child: ListView.separated(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: recommendations.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return RecommendationCard(
                    imageUrl: recommendations[index]['imageUrl']!,
                    title: recommendations[index]['title']!,
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 20),
              ),
            ),
            const SizedBox(height: 20),
            ServiceWidgets(services: services),
          ],
        ),
      ),
    );
  }
}
