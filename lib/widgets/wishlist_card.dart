import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class WishlistCard extends StatelessWidget {
  const WishlistCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      padding: const EdgeInsets.only(top: 5, left: 12, bottom: 14, right: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          12,
        ),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/nasipadang.webp',
              width: 100,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nasi Padang',
                  style: blackTextStyle.copyWith(
                      fontSize: 18, fontWeight: semibold),
                ),
                Text(
                  'Rp.50.000',
                  style: redTextStyle.copyWith(fontSize: 16),
                )
              ],
            ),
          ),
          Image.asset(
            'assets/images/icon_loved_single_favorite_details.png',
            width: 20,
          )
        ],
      ),
    );
  }
}
