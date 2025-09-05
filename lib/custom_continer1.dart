import 'package:flutter/material.dart';
import 'package:prectice_task/core/model/compability.dart';
import 'package:prectice_task/core/constant/text_style.dart';

class CustomContiner1 extends StatelessWidget {
  CompabilityModel? compabilityModel;

  CustomContiner1({required this.compabilityModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 186,
      width: 142,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset("${compabilityModel!.img}"),
          Text("${compabilityModel!.title}", style: style3),
          Expanded(
            child: Text("${compabilityModel!.subtitle}", style: stylegry),
          ),
        ],
      ),
    );
  }
}
