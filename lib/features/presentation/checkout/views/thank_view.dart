import 'package:flutter/material.dart';
import 'package:paymentapp/features/presentation/checkout/views/widget/thank_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});
  static const routeName = '/thankyou';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ThankViewBody(),
    );
  }
}
