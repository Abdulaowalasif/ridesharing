import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const CustomTitle({super.key, required this.title, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.only(
        left: 20,
        right: 20,
        top: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: onPressed,
            child: Row(
              children: [
                Text('View All', style: TextStyle(color: Color(0xff584cf4))),
                Icon(
                  Icons.arrow_forward_ios,
                  color: Color(0xff584cf4),
                  size: 16,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
