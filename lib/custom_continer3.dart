import 'package:flutter/material.dart';
import 'package:prectice_task/core/model/schedule.dart';
import 'package:prectice_task/text_style.dart';

class CustomContiner3 extends StatelessWidget {
  Schedule? schedule;

  CustomContiner3({required this.schedule});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 142,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 7,
            spreadRadius: 2,
            offset: Offset(0, 2),
          ),
        ],

        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("${schedule!.imgh}"),
            Text("${schedule!.title1}", style: style3),
            Text("${schedule!.subtitle1}", style: stylegry),
          ],
        ),
      ),
    );
  }
}
