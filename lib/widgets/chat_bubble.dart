import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;
  final bool hasProduct;

  const ChatBubble(
      {super.key,
      this.isSender = false,
      this.text = '',
      this.hasProduct = false});

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
          width: 230,
          height: 155,
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            border: Border.all(
              color: isSender ? redColor : Colors.green,
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(isSender ? 12 : 0),
              topRight: Radius.circular(isSender ? 0 : 12),
              bottomLeft: const Radius.circular(12),
              bottomRight: const Radius.circular(
                12,
              ),
            ),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/nasipadang.webp',
                      width: 80,
                    ),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Nasi Padang',
                          style: blackTextStyle.copyWith(
                              fontSize: 16, fontWeight: semibold),
                        ),
                        Text(
                          'Rp.50.000',
                          style: redTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                        )
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                          color: redColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: Center(
                          child: Text(
                        'Add To Cart',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: semibold),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 90,
                      height: 40,
                      decoration: BoxDecoration(
                        color: redColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text(
                          'Buy Now',
                          style: whiteTextStyle.copyWith(
                              fontSize: 12, fontWeight: semibold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ));
    }

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30.0),
      child: Column(
          crossAxisAlignment:
              isSender ? CrossAxisAlignment.end : CrossAxisAlignment.start,
          children: [
            hasProduct ? productPreview() : const SizedBox(),
            Row(
              mainAxisAlignment:
                  isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
              children: [
                Flexible(
                    child: Container(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.6),
                  padding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                  decoration: BoxDecoration(
                    border:
                        Border.all(color: isSender ? redColor : Colors.green),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(isSender ? 12 : 0),
                        topRight: Radius.circular(isSender ? 0 : 12),
                        bottomLeft: const Radius.circular(12),
                        bottomRight: const Radius.circular(12)),
                  ),
                  child: Text(
                    text,
                    style: blackTextStyle.copyWith(
                        fontSize: 14, fontWeight: medium),
                  ),
                )),
              ],
            ),
          ]),
    );
  }
}
