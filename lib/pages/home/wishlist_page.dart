import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';
import 'package:goterno_app/widgets/wishlist_card.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: redColor,
        centerTitle: true,
        title: Text(
          'Favorite Fooos and Drinks',
          style: whiteTextStyle.copyWith(fontSize: 20, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/icon_loved_single_favorite_details.png',
              width: 80,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'You Have dont have any favorite',
              style:
                  blackTextStyle.copyWith(fontSize: 18, fontWeight: semibold),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              'lets find your favorite food',
              style:
                  blackTextStyle.copyWith(fontSize: 16, fontWeight: semibold),
            ),
            const SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 200,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: redColor,
                ),
                child: Center(
                    child: Text(
                  'Explore Store',
                  style: whiteTextStyle.copyWith(
                    fontSize: 20,
                    fontWeight: medium,
                  ),
                )),
              ),
            ),
          ],
        ),
      ));
    }

    Widget content() {
      return Expanded(
        child: SizedBox(
          child: ListView(
            children: const [WishlistCard(), WishlistCard(), WishlistCard()],
          ),
        ),
      );
    }

    return Column(
      children: [header(), content()],
    );
  }
}
