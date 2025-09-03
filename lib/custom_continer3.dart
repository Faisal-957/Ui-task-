import 'package:flutter/material.dart';
import 'package:prectice_task/text_style.dart';

class CustomContiner3 extends StatelessWidget {
  // final List<CustomContiner3> list2 = [
  //   CustomContiner3(
  //     imgh: "assets/imgh/group.png",
  //     title1: "Beach Volleyball",
  //     subtitle1: "Monday, 5:00 PM",
  //   ),
  //   CustomContiner3(
  //     imgh: "assets/imgh/cooking.png",
  //     title1: "Cooking Class",
  //     subtitle1: "Wednesday, 6:00 PM",
  //   ),
  // ];
  final String imgh;
  final String title1;
  final String subtitle1;

  const CustomContiner3({
    super.key,
    required this.imgh,
    required this.title1,
    required this.subtitle1,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 142,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imgh),
            Text(title1, style: style3),
            Text(subtitle1, style: stylegry),
          ],
        ),
      ),
    );
  }
}
