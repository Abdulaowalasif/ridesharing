import 'package:flutter/material.dart';

class TravelCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final List<String> userImages;
  final int extraUserCount;

  const TravelCard({
    Key? key,
    required this.imageUrl,
    required this.title,
    required this.userImages,
    required this.extraUserCount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 10, right: 10),
          height: 120,
          width: 230,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage(imageUrl),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                bottom: 10,
                left: 10,
                child: CircleAvatar(backgroundImage: AssetImage(userImages[0])),
              ),
              Positioned(
                bottom: 10,
                left: 30,
                child: CircleAvatar(backgroundImage: AssetImage(userImages[1])),
              ),
              Positioned(
                bottom: 10,
                left: 50,
                child: CircleAvatar(backgroundImage: AssetImage(userImages[2])),
              ),
              Positioned(
                bottom: 10,
                left: 70,
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Text(
                    '+$extraUserCount',
                    style: TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          title,
          style: TextStyle(
            color: Color(0xff666666),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
