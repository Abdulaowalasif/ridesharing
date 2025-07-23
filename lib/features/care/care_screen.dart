import 'package:flutter/material.dart';
import 'package:ride/features/widgets/custom_appbar.dart';
import 'package:ride/features/widgets/custom_title.dart';
import 'package:ride/features/widgets/recommendation_card.dart';

class CareScreen extends StatelessWidget {
  const CareScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> recommendations = [
      {'imageUrl': 'assets/images/Rectangle 334.png', 'title': 'Spark Plug'},
      {'imageUrl': 'assets/images/Rectangle 334-1.png', 'title': 'Clutch Shoe'},
      {'imageUrl': 'assets/images/Rectangle 334-2.png', 'title': 'Hose Fuel'},
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppbar(title: 'Care'),
      body: Column(
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
          const SizedBox(height: 20),
          Expanded(
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
        ],
      ),
    );
  }
}
