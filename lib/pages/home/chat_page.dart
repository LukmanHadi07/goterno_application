import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';
import 'package:goterno_app/widgets/chat_tile.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: redColor,
        centerTitle: true,
        title: Text(
          'Message Support',
          style: whiteTextStyle.copyWith(fontSize: 18, fontWeight: medium),
        ),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyChat() {
      return Expanded(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/headset.png',
                width: 100,
                height: 100,
              ),
              const SizedBox(
                height: 19,
              ),
              Text(
                'Maaf belum ada pesan',
                style:
                    blackTextStyle.copyWith(fontSize: 16, fontWeight: medium),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'Anda belum pernah melakukan transaksi',
                style:
                    blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                height: 50,
                width: 120,
                margin: EdgeInsets.only(top: defaultMargin),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: redColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        12,
                      ),
                    ),
                  ),
                  child: Text(
                    'Exolore Store',
                    style: whiteTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Expanded(
          child: SizedBox(
        width: double.infinity,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultMargin),
          children: [ChatTile()],
        ),
      ));
    }

    return Column(
      children: [header(), content()],
    );
  }
}
