import 'package:flutter/material.dart';

class RecommendationCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  const RecommendationCard({super.key, required this.imageUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 100,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Text(title, style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            color: Colors.black)),
      ],
    );
  }
}
