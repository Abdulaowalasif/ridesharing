import 'package:flutter/material.dart';

class UsersTile extends StatelessWidget {
  final String imageUrl;
  final String name;

  const UsersTile({super.key, required this.imageUrl, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(backgroundImage: AssetImage(imageUrl), radius: 30),
        const SizedBox(height: 8),
        Text(name, style: const TextStyle(fontSize: 14)),
      ],
    );
  }
}
