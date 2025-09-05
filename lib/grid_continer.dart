import 'package:flutter/material.dart';
import 'package:prectice_task/core/constant/text_style.dart';
import 'package:prectice_task/core/model/beauty_service.dart';

class GridContiner extends StatelessWidget {
  BeautyService? beautyService;
  GridContiner({this.beautyService});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: beautyService!.colorss,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: beautyService!.avatarcolor,
            radius: 50,
            child: Image.asset("${beautyService!.img}", scale: 3),
          ),
          SizedBox(height: 5),
          Text(
            "${beautyService!.title}",
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
