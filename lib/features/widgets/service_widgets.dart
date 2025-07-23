import 'package:flutter/material.dart';
import 'package:ride/features/widgets/service_card.dart';

import 'custom_title.dart';

class ServiceWidgets extends StatelessWidget {
  const ServiceWidgets({
    super.key,
    required this.services,
  });

  final List<Map<String, dynamic>> services;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTitle(title: 'Buy Service Packages', onPressed: () {}),
        const SizedBox(height: 20),
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          height: 250,
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemCount: 4,
            itemBuilder: (BuildContext context, int index) => ServiceCard(
              imageUrl: services[index]['imageUrl'],
              title: services[index]['title'],
              price: services[index]['price'],
              originalPrice: services[index]['originalPrice'],
              discount: services[index]['discount'],
            ),
          ),
        ),
      ],
    );
  }
}
