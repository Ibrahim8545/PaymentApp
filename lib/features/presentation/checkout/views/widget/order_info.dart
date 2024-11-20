import 'package:flutter/material.dart';
import 'package:paymentapp/core/utlis/styles.dart';

// ignore: must_be_immutable
class OrderInfoItem extends StatelessWidget {
  OrderInfoItem({super.key, required this.title, required this.price});
  String title, price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Styles.style18,
        ),
        const Spacer(),
        Text(
          price,
          style: Styles.style18,
        )
      ],
    );
  }
}
