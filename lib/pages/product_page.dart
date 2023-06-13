import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List image = [
    'assets/images/nasipadang.webp',
    'assets/images/nasipadang.webp',
    'assets/images/nasipadang.webp',
  ];

  List imagesFamilyFood = [
    'assets/images/nasipadang.webp',
    'assets/images/nasipadang.webp',
    'assets/images/nasipadang.webp',
    'assets/images/nasipadang.webp',
    'assets/images/nasipadang.webp',
    'assets/images/nasipadang.webp',
    'assets/images/nasipadang.webp',
    'assets/images/nasipadang.webp',
    'assets/images/nasipadang.webp',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    Widget indicator(int index) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 2),
        width: currentIndex == index ? 16 : 4,
        height: 4,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: currentIndex == index ? redColor : Colors.grey),
      );
    }

    Widget FamiliarFoodCard(String imageUrl) {
      return Container(
        width: 54,
        height: 54,
        margin: const EdgeInsets.only(
          right: 10,
        ),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(imageUrl)),
            borderRadius: BorderRadius.circular(6)),
      );
    }

    Widget header() {
      int index = -1;
      return Column(
        children: [
          Container(
            margin: EdgeInsets.only(
              top: 20,
              left: defaultMargin,
              right: defaultMargin,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.chevron_left,
                    size: 25,
                  ),
                ),
                const Icon(
                  Icons.shopping_bag,
                  size: 25,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          CarouselSlider(
            items: image.map((image) {
              return Container(
                margin: const EdgeInsetsDirectional.symmetric(horizontal: 10.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: 310,
                    )),
              );
            }).toList(),
            options: CarouselOptions(
                initialPage: 0,
                onPageChanged: (int index, reason) {
                  setState(() {
                    currentIndex = index;
                  });
                }),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: image.map((e) {
              index++;
              return indicator(index);
            }).toList(),
          )
        ],
      );
    }

    Widget content() {
      int index = -1;
      return Container(
        width: double.infinity,
        margin: const EdgeInsetsDirectional.only(top: 17),
        decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(24),
            ),
            color: redColor),
        child: Column(
          children: [
            // Note Header
            Container(
              margin: EdgeInsets.only(
                  top: defaultMargin,
                  right: defaultMargin,
                  left: defaultMargin),
              child: Row(
                children: [
                  Expanded(
                      child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Nasi Padang',
                        style: whiteTextStyle.copyWith(
                          fontSize: 20,
                          fontWeight: semibold,
                        ),
                      ),
                      Text(
                        'Food',
                        style: whiteTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      )
                    ],
                  )),
                  Image.asset(
                    'assets/images/love_white.png',
                    width: 30,
                  )
                ],
              ),
            ),

            // Note Price
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: 10,
                left: defaultMargin,
                right: defaultMargin,
              ),
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: whiteColor, borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Harga',
                    style: blackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  ),
                  Text(
                    'Rp.50.000',
                    style: blackTextStyle.copyWith(
                        fontSize: 18, fontWeight: semibold),
                  )
                ],
              ),
            ),
            // Note Description
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                top: defaultMargin,
                left: defaultMargin,
                right: defaultMargin,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Deskripsi',
                    style: whiteTextStyle.copyWith(
                        fontSize: 20, fontWeight: semibold),
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco',
                    style: whiteTextStyle.copyWith(
                        fontSize: 14, fontWeight: light),
                    textAlign: TextAlign.justify,
                  )
                ],
              ),
            ),
            // Note Familiar Shoes
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                    child: Text(
                      'Familiar Food',
                      style: whiteTextStyle.copyWith(
                          fontSize: 20, fontWeight: semibold),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: imagesFamilyFood.map((image) {
                        index++;
                        return Container(
                            margin: EdgeInsets.only(
                              left: index == 0 ? defaultMargin : 0,
                            ),
                            child: FamiliarFoodCard(image));
                      }).toList(),
                    ),
                  )
                ],
              ),
            ),
            // Note Button
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(
                  top: 10,
                  left: defaultMargin,
                  right: defaultMargin,
                  bottom: 10),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 54,
                      height: 54,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image:
                                  AssetImage('assets/images/button_chat.png'))),
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 41,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                            child: Text(
                          'Add To Cart',
                          style: redTextStyle.copyWith(
                              fontSize: 16, fontWeight: semibold),
                        )),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: ListView(
        children: [header(), content()],
      ),
    );
  }
}
