import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';
import 'package:goterno_app/widgets/widget_text_image.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: redColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        flexibleSpace: SafeArea(
            child: Container(
          padding: EdgeInsets.all(defaultMargin),
          child: Row(
            children: [
              ClipOval(
                child: Image.asset(
                  'assets/images/icon_account_profile_navigation_bar.png',
                  width: 50,
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hallo, Lukman',
                      style: whiteTextStyle.copyWith(
                          fontSize: 18, fontWeight: bold),
                    ),
                    Text(
                      '@lukmanHadi',
                      style: whiteTextStyle.copyWith(
                          fontSize: 12, fontWeight: regular),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/sign-in', (route) => false);
                },
                child: Image.asset(
                  'assets/images/logout.png',
                  width: 26,
                ),
              )
            ],
          ),
        )),
      );
    }

    Widget content() {
      return Expanded(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          decoration: const BoxDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
              ),
              Text(
                'Account',
                style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
              ),
              const SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/edit-profile');
                },
                child: const TextandImageAccount(
                  title: 'Edit Profile',
                  imagePath: 'assets/images/gambar_text.png',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TextandImageAccount(
                title: 'Your Orders',
                imagePath: 'assets/images/gambar_text.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const TextandImageAccount(
                title: 'Help',
                imagePath: 'assets/images/gambar_text.png',
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'General',
                style: blackTextStyle.copyWith(fontSize: 24, fontWeight: bold),
              ),
              const SizedBox(
                height: 10,
              ),
              const TextandImageAccount(
                title: 'Privacy & Policy',
                imagePath: 'assets/images/gambar_text.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const TextandImageAccount(
                title: 'Team Of Service',
                imagePath: 'assets/images/gambar_text.png',
              ),
              const SizedBox(
                height: 20,
              ),
              const TextandImageAccount(
                title: 'Rate App',
                imagePath: 'assets/images/gambar_text.png',
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [header(), content()],
    );
  }
}
