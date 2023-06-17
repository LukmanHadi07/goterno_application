import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';
import 'package:goterno_app/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget context() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [
          // Note List Items
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'List Items',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
              ),
              CheckoutCard(),
              CheckoutCard()
            ]),
          )
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: redColor,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Checkout Details',
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
        ),
      ),
      body: context(),
    );
  }
}
