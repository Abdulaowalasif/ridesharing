import 'package:flutter/material.dart';
import 'package:ride/features/widgets/custom_appbar.dart';
import 'package:ride/features/widgets/custom_title.dart';
import 'package:ride/features/widgets/users_tile.dart';

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

    return Scaffold(
      appBar: CustomAppbar(title: "Home"),
      body: Column(
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

        ],
      ),
    );
  }
}
