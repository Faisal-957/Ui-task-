import 'package:flutter/material.dart';
import 'package:prectice_task/text_style.dart';

class CustomContiner2 extends StatelessWidget {
  final String img;
  final String title;
  final String date;
  final String time;
  final String text;
  const CustomContiner2({
    super.key,
    required this.img,
    required this.title,
    required this.date,
    required this.time,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 325,

      decoration: BoxDecoration(
        color: Colors.white,
        // border: Border.all(color: Colors.black, width: 0.5),
        boxShadow: [BoxShadow(color: Colors.black)],
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.only(
              topLeft: Radius.circular(18),
              topRight: Radius.circular(18),
            ),
            child: Image.asset(img),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: style1),
                Text(date, style: stylegry),
                Text(time, style: stylegry),
                Text(text, style: stylegry),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
