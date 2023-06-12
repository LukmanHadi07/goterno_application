import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductPage extends StatefulWidget {
  ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List image = [
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

    return Scaffold(
      body: ListView(
        children: [header()],
      ),
    );
  }
}
