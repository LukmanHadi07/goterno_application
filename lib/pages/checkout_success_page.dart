import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class CheckoutSuccesPage extends StatelessWidget {
  const CheckoutSuccesPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: redColor,
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Checkout Success',
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
      );
    }

    Widget content() {
      return Expanded(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/cart-variant.png',
              width: 150,
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Anda Melakukan Transaksi',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Terimakasih :)',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'Sudah menggunakan layanan kami',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin:
                  EdgeInsets.only(left: defaultMargin, right: defaultMargin),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: redColor),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/home', (route) => false);
                  },
                  child: Text(
                    'Silakan Memesan Makanan',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  )),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              margin:
                  EdgeInsets.only(left: defaultMargin, right: defaultMargin),
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12), color: blackColor),
              child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Kunjungi Galery Produk Kami',
                    style: whiteTextStyle.copyWith(
                        fontSize: 16, fontWeight: semibold),
                  )),
            ),
          ],
        ),
      ));
    }

    return Scaffold(
      body: Column(
        children: [header(), content()],
      ),
    );
  }
}
