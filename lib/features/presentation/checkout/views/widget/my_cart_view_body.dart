import 'package:flutter/material.dart';
import 'package:paymentapp/core/widget/custum_buttom.dart';
import 'package:paymentapp/features/presentation/checkout/views/paymnet_details.dart';
import 'package:paymentapp/features/presentation/checkout/views/widget/order_info.dart';
import 'package:paymentapp/features/presentation/checkout/views/widget/total_price_widget.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/Group 6.png'),
          const SizedBox(
            height: 25,
          ),
          OrderInfoItem(
            title: 'Order Subtotal',
            price: r'42.97$',
          ),
          const SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: 'Discount',
            price: r'42.97$',
          ),
          const SizedBox(
            height: 3,
          ),
          OrderInfoItem(
            title: 'Shipping',
            price: r'15$',
          ),
          const Divider(
            thickness: 3,
            height: 34,
          ),
          TotalPrice(
            title: 'Total',
            price: r'56.87$',
          ),
          const SizedBox(
            height: 16,
          ),
          CustomButtom(
            onTap: () {
              Navigator.pushNamed(context, PaymnetDetailsView.routeName);
            },
          )
        ],
      ),
    );
  }
}
