import 'package:flutter/material.dart';
import 'package:goterno_app/pages/home/chat_page.dart';
import 'package:goterno_app/pages/home/home_page.dart';
import 'package:goterno_app/pages/home/profile_page.dart';
import 'package:goterno_app/pages/home/wishlist_page.dart';
import 'package:goterno_app/themes.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // method widget cartButton
    Widget cartButton() {
      return FloatingActionButton(
        backgroundColor: redColor,
        onPressed: () {},
        child: Image.asset(
          'assets/images/icon_cart_navigation_bar.png',
          width: 25,
        ),
      );
    }

    Widget customBottomNavbar() {
      return ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          notchMargin: 8,
          clipBehavior: Clip.antiAlias,
          child: BottomNavigationBar(
            backgroundColor: redColor,
            currentIndex: currentIndex,
            onTap: (value) {
              setState(() {
                currentIndex = value;
              });
            },
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: Image.asset(
                      'assets/images/icon_home_navigation_bar.png',
                      width: 20,
                      color:
                          currentIndex == 0 ? Colors.blueAccent : Colors.white,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: Image.asset(
                      'assets/images/icon_chat_navigation_bar.png',
                      width: 20,
                      color:
                          currentIndex == 1 ? Colors.blueAccent : Colors.white,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: Image.asset(
                      'assets/images/icon_love_hand_navigation-dart.png',
                      width: 20,
                      color:
                          currentIndex == 2 ? Colors.blueAccent : Colors.white,
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    margin: const EdgeInsets.only(top: 20.0, bottom: 10.0),
                    child: Image.asset(
                      'assets/images/icon_account_profile_navigation_bar.png',
                      width: 20,
                      color:
                          currentIndex == 3 ? Colors.blueAccent : Colors.white,
                    ),
                  ),
                  label: '')
            ],
          ),
        ),
      );
    }

    Widget body() {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const ChatPage();
        case 2:
          return const WishlistPage();
        case 3:
          return const ProfilePage();
        default:
          return const HomePage();
      }
    }

    return Scaffold(
        floatingActionButton: cartButton(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: customBottomNavbar(),
        body: body());
  }
}
