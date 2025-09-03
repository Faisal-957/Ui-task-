import 'package:flutter/material.dart';
import 'package:prectice_task/text_style.dart';

class CustomContiner1 extends StatelessWidget {
  final String img;
  final String title;
  final String subtitle;

  const CustomContiner1({
    super.key,
    required this.img,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      width: 142,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(img),
            Text(title, style: style3),
            Text(subtitle, style: stylegry),
          ],
        ),
      ),
    );
  }
}
