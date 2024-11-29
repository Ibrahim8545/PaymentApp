import 'package:flutter/material.dart';
import 'package:paymentapp/features/presentation/checkout/views/widget/custom_dashed_line.dart';
import 'package:paymentapp/features/presentation/checkout/views/widget/thank_you_card.dart';

class ThankViewBody extends StatelessWidget {
  const ThankViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          const ThankYouCrad(),
          Positioned(
            left: 20 + 16,
            right: 20 + 16,
            bottom: MediaQuery.sizeOf(context).height * 0.2 + 20,
            child: const CustomDashedLine(),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            left: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          Positioned(
            bottom: MediaQuery.sizeOf(context).height * 0.2,
            right: -20,
            child: const CircleAvatar(
              backgroundColor: Colors.white,
            ),
          ),
          const Positioned(
            top: -50,
            right: 0,
            left: 0,
            child: CircleAvatar(
                radius: 50,
                backgroundColor: Color(0xffd9d9d9),
                child: CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 50,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}
