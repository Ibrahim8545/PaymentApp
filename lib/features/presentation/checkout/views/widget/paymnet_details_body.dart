import 'package:flutter/material.dart';
import 'package:paymentapp/core/widget/custum_buttom.dart';
import 'package:paymentapp/features/presentation/checkout/views/thank_view.dart';
import 'package:paymentapp/features/presentation/checkout/views/widget/card_contaner_list_view.dart';
import 'package:paymentapp/features/presentation/checkout/views/widget/custom_credit_card.dart';

class PaymnetDetailsBody extends StatefulWidget {
  const PaymnetDetailsBody({super.key});

  @override
  State<PaymnetDetailsBody> createState() => _PaymnetDetailsBodyState();
}

class _PaymnetDetailsBodyState extends State<PaymnetDetailsBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
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
        SliverToBoxAdapter(
          child: CustomCreditCard(
            autovalidateMode: autovalidateMode,
            formKey: formKey,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
              alignment: Alignment.bottomCenter,
              child: CustomButtom(
                text: 'Payment',
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    Navigator.pushNamed(context, ThankYouView.routeName);
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              )),
        )
      ],
    );
  }
}
