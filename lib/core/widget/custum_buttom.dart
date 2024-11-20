import 'package:flutter/material.dart';
import 'package:paymentapp/core/utlis/styles.dart';

// ignore: must_be_immutable
class CustomButtom extends StatelessWidget {
  CustomButtom({super.key, this.onTap});
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 350,
        height: 73,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25), color: Color(0xff34A853)),
        child: Center(
          child: Text(
            'Complete Payment',
            style: Styles.style22,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
