import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerCart() {
      return AppBar(
        backgroundColor: redColor,
        centerTitle: true,
        title: Text(
          'You Cart',
          style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: semibold),
        ),
      );
    }

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

    return Scaffold(
      body: Column(
        children: [headerCart(), emptyCart()],
      ),
    );
  }
}
