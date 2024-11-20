import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CardContainer extends StatelessWidget {
  CardContainer({super.key, required this.image, required this.isActive});
  String image;
  bool isActive = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(microseconds: 600),
      width: 100,
      height: 57,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              width: 3, color: isActive ? Colors.green : Colors.black)),
      child: Image.asset(image),
    );
  }
}
