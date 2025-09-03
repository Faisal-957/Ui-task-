import 'package:flutter/material.dart';

final authdecoration = InputDecoration(
  fillColor: Colors.grey[200],
  filled: true,
  prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
  hintText: "Search for people, groups, or even",
  suffixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.close)),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(360),
    borderSide: BorderSide(color: Color(0xffFAFBFF)),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(360),
    borderSide: BorderSide(color: Color(0xffFAFBFF)),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(360),
    borderSide: BorderSide(color: Color(0xffFAFBFF)),
  ),
  disabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(360),
    borderSide: BorderSide(color: Color(0xffFAFBFF)),
  ),
);
