import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';
import 'package:goterno_app/widgets/product_card.dart';
import 'package:goterno_app/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, Lukman Hadi',
                    style: blackTextStyle.copyWith(
                      fontSize: 24,
                    ),
                  ),
                  Text(
                    '@LukmanHadi',
                    style: blackTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage(
                    'assets/images/icon_profile_red.png',
                  ))),
            )
          ],
        ),
      );
    }

    // method category
    Widget category() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: redColor, borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                child: Text(
                  'All Food',
                  style: whiteTextStyle.copyWith(
                      fontWeight: medium, fontSize: 16.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: redColor, borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                child: Text(
                  'Food',
                  style: whiteTextStyle.copyWith(
                      fontWeight: medium, fontSize: 16.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: redColor, borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                child: Text(
                  'Drink',
                  style: whiteTextStyle.copyWith(
                      fontWeight: medium, fontSize: 16.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: redColor, borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                child: Text(
                  'Terno Jek',
                  style: whiteTextStyle.copyWith(
                      fontWeight: medium, fontSize: 16.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                    color: redColor, borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                child: Text(
                  'Terno Food',
                  style: whiteTextStyle.copyWith(
                      fontWeight: medium, fontSize: 16.0),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget judulProdukPopuler() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin, // defaultMargin for widget margin 30
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Text(
          'Produk Populer',
          style: blackTextStyle.copyWith(fontSize: 22.0, fontWeight: semibold),
        ),
      );
    }

    Widget produkPopuler() {
      return Container(
        margin: EdgeInsets.only(top: defaultMargin),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              const Row(
                children: [
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                  ProductCard(),
                ],
              )
            ],
          ),
        ),
      );
    }

    Widget judulNewArrivals() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin, // defaultMargin for widget margin 30
          right: defaultMargin,
          left: defaultMargin,
        ),
        child: Text(
          'Produk Baru',
          style: blackTextStyle.copyWith(fontSize: 22.0, fontWeight: semibold),
        ),
      );
    }

    Widget newArrivals() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.only(top: 14),
          child: Column(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              const ProductTile(),
              const ProductTile(),
              const ProductTile(),
              const ProductTile()
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        category(),
        judulProdukPopuler(),
        produkPopuler(),
        judulNewArrivals(),
        newArrivals()
      ],
    );
  }
}
