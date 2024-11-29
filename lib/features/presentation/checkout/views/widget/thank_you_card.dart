import 'package:flutter/material.dart';
import 'package:paymentapp/core/utlis/styles.dart';

class ThankYouCrad extends StatelessWidget {
  const ThankYouCrad({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        color: const Color(0xffD9D9D9),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 66, left: 22, right: 22),
        child: Column(
          children: [
            Text(
              'Thank You!',
              style: Styles.style25,
              textAlign: TextAlign.center,
            ),
            Text(
              'Your transaction was successful',
              style: Styles.style20,
            ),
            const SizedBox(
              height: 42,
            ),
            CustomThankYouInfo(title: 'Date', subtitle: '01/24/2023'),
            const SizedBox(
              height: 20,
            ),
            CustomThankYouInfo(title: 'Date', subtitle: '01/24/2023'),
            const SizedBox(
              height: 20,
            ),
            CustomThankYouInfo(title: 'Date', subtitle: '01/24/2023')
          ],
        ),
      ),
    );
  }
}

class CustomThankYouInfo extends StatelessWidget {
  const CustomThankYouInfo(
      {super.key, required this.title, required this.subtitle});
  final String title, subtitle;
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
          subtitle,
          style: Styles.style18.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
