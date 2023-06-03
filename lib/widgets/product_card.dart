import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 214,
      height: 278,
      margin: EdgeInsets.only(right: defaultMargin),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            'assets/images/nasipadang.webp',
            fit: BoxFit.cover,
            width: 214,
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Makanan',
                  style: blackTextStyle.copyWith(
                      fontSize: 12, fontWeight: regular),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nasi Padang',
                  style:
                      blackTextStyle.copyWith(fontSize: 18, fontWeight: bold),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rp.50.000',
                  style:
                      redTextStyle.copyWith(fontSize: 14, fontWeight: semibold),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
