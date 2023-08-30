// building the indicators
import 'package:event_booking_app/utils/colors.dart';
import 'package:flutter/material.dart';

List<Widget> buildIndicators() {
  List<Widget> list = [];
  for (int i = 0; i < 4; i++) {
    list.add(i == 1 ? indicator(true) : indicator(false));
  }
  return list;
}

Widget indicator(bool isActive) {
  return AnimatedContainer(
    margin: const EdgeInsets.symmetric(horizontal: 5.0),
    duration: const Duration(microseconds: 150),
    height: 8.0,
    width: isActive ? 30.0 : 8.0,
    decoration: BoxDecoration(
      color: isActive ? appGreyColor : Colors.grey,
      borderRadius: BorderRadius.circular(30),
    ),
  );
}
