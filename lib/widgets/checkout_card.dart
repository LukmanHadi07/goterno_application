import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class CheckoutCard extends StatelessWidget {
  const CheckoutCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: redColor)),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                  image: AssetImage('assets/images/nasipadang.webp')),
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nasi Padang',
                  style: blackTextStyle.copyWith(
                      fontWeight: semibold, fontSize: 18),
                ),
                Text(
                  'Rp.50.000',
                  style:
                      redTextStyle.copyWith(fontWeight: medium, fontSize: 14),
                ),
              ],
            ),
          ),
          Text(
            '2 Items',
            style: blackTextStyle.copyWith(fontSize: 12, fontWeight: medium),
          )
        ],
      ),
    );
  }
}
