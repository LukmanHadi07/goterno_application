import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';
import 'package:goterno_app/widgets/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget emptyCart() {
      return Expanded(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/cart-variant.png',
                width: 200,
                height: 200,
              ),
              Text(
                'Maaf Keranjang Anda Kosong',
                style: redTextStyle.copyWith(fontSize: 20, fontWeight: bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Mari temukan makanan favorit Anda',
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                width: 150,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12), color: redColor),
                child: TextButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, '/home', (route) => false);
                    },
                    child: Text(
                      'Explore Store',
                      style: whiteTextStyle.copyWith(
                          fontSize: 18, fontWeight: semibold),
                    )),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          CartCard(),
        ],
      );
    }

    Widget cusstomBottomNav() {
      return Container(
        height: 168,
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: defaultMargin),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Sub Total',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  ),
                  Text(
                    'Rp.100.000',
                    style: redTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/checkout');
              },
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: defaultMargin),
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    color: redColor, borderRadius: BorderRadius.circular(10)),
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Continue To Checkout',
                      style: whiteTextStyle.copyWith(
                          fontSize: 16, fontWeight: semibold),
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: whiteColor,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: redColor,
        centerTitle: true,
        title: Text(
          'You Cart',
          style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: semibold),
        ),
      ),
      body: content(),
      bottomNavigationBar: cusstomBottomNav(),
    );
  }
}
