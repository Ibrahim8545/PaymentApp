import 'package:flutter/material.dart';
import 'package:paymentapp/features/presentation/checkout/views/my_cart_view.dart';
import 'package:paymentapp/features/presentation/checkout/views/paymnet_details.dart';
import 'package:paymentapp/features/presentation/checkout/views/thank_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        PaymnetDetailsView.routeName: (context) => const PaymnetDetailsView(),
        ThankYouView.routeName: (context) => const ThankYouView(),
      },
      debugShowCheckedModeBanner: false,
      home: const MyCartView(),
    );
  }
}

//flutter pub add u_credit_card