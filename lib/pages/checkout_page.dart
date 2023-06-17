import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';
import 'package:goterno_app/widgets/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
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
              const CheckoutCard(),
              const CheckoutCard()
            ]),
          ),
          // Noted Address Details
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: redColor),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Detail Alamat',
                  style:
                      blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/store_location.png',
                          width: 20,
                        ),
                        Image.asset(
                          'assets/images/garis.png',
                          width: 1,
                        ),
                        Image.asset('assets/images/location.png', width: 20),
                      ],
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Store Location',
                            style: blackTextStyle.copyWith(
                                fontSize: 9, fontWeight: regular)),
                        Text(
                          'Warung Padang Pinggir Jalan',
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: semibold),
                          overflow: TextOverflow.ellipsis,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text('Alamat Kamu',
                            style: blackTextStyle.copyWith(
                                fontSize: 9, fontWeight: regular)),
                        Text(
                          'Desa Jabung',
                          style: blackTextStyle.copyWith(
                              fontSize: 12, fontWeight: semibold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
          // Noted Payment Summary
          Container(
            margin: EdgeInsets.only(top: defaultMargin),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: redColor),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rincian Pembayaran',
                  style:
                      blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Jumlah Produk',
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: semibold),
                    ),
                    Text(
                      '2 Items',
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: semibold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Harga Produk',
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: semibold),
                    ),
                    Text(
                      'Rp.100.000',
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: semibold),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pengiriman',
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: semibold),
                    ),
                    Text(
                      'Gratis',
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: semibold),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                const Divider(
                  thickness: 1,
                  color: redColor,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Total',
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: semibold),
                    ),
                    Text(
                      'Rp.100.000',
                      style: blackTextStyle.copyWith(
                          fontSize: 12, fontWeight: semibold),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),

          // Noted Bottom bar
          Container(
            margin: const EdgeInsets.only(top: 20, bottom: 10),
            padding: const EdgeInsets.only(left: 20, right: 20),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12), color: redColor),
            child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/checkout-success', (route) => false);
                },
                child: Text(
                  'Checkout Sekarang',
                  style: whiteTextStyle.copyWith(
                      fontSize: 16, fontWeight: semibold),
                )),
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
      body: content(),
    );
  }
}
