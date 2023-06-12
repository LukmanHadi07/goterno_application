import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/product-page');
      },
      child: Container(
        margin: EdgeInsets.only(top: 10, right: defaultMargin, bottom: 5.0),
        child: Row(
          children: [
            const SizedBox(
              width: 30,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/images/nasipadang.webp',
                fit: BoxFit.cover,
                width: 120,
                height: 120,
              ),
            ),
            const SizedBox(
              width: 12.0,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text('Makanan'),
                Text('Nasi Padang',
                    style: blackTextStyle.copyWith(
                        fontSize: 18.0, fontWeight: bold)),
                Text(
                  'Rp.50.000',
                  style:
                      redTextStyle.copyWith(fontWeight: medium, fontSize: 14),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
