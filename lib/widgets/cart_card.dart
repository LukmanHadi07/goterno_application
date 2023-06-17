import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class CartCard extends StatelessWidget {
  const CartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:
          EdgeInsets.only(top: 20, left: defaultMargin, right: defaultMargin),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: redColor)),
      child: Column(
        children: [
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/nasipadang.webp'))),
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
                    style:
                        redTextStyle.copyWith(fontSize: 14, fontWeight: medium),
                  ),
                ],
              )),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/add.png',
                    width: 15,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    '2',
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Image.asset(
                    'assets/images/minus.png',
                    width: 15,
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Image.asset(
                'assets/images/remove.png',
                width: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                'Remove',
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              )
            ],
          )
        ],
      ),
    );
  }
}
