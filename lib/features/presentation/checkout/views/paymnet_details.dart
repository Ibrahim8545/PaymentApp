import 'package:flutter/material.dart';
import 'package:paymentapp/core/utlis/styles.dart';
import 'package:paymentapp/features/presentation/checkout/views/widget/paymnet_details_body.dart';

class PaymnetDetailsView extends StatelessWidget {
  const PaymnetDetailsView({super.key});
  static const String routeName = 'name';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Paymnet Details',
          textAlign: TextAlign.center,
          style: Styles.style25,
        ),
      ),
      body: const PaymnetDetailsBody(),
    );
  }
}
