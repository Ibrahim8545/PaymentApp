import 'package:flutter/material.dart';
import 'package:paymentapp/core/widget/custum_buttom.dart';
import 'package:paymentapp/features/presentation/checkout/views/widget/card_contaner_list_view.dart';
import 'package:paymentapp/features/presentation/checkout/views/widget/custom_credit_card.dart';

class PaymnetDetailsBody extends StatelessWidget {
  const PaymnetDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 18,
          ),
        ),
        SliverToBoxAdapter(
          child: CardContainerListView(),
        ),
        const SliverToBoxAdapter(
          child: CustomCreditCard(),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child:
              Align(alignment: Alignment.bottomCenter, child: CustomButtom()),
        )
      ],
    );
  }
}
