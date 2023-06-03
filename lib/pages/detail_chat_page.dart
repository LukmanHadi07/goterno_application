import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';
import 'package:goterno_app/widgets/chat_bubble.dart';

class DetailChatPage extends StatelessWidget {
  const DetailChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget productPreview() {
      return Container(
        width: 230,
        height: 74,
        margin: const EdgeInsets.only(bottom: 25),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: redColor),
            color: const Color(0xffF5F5F5)),
        child: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                width: 60,
                height: 60,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    'assets/images/nasipadang.webp',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Nasi Padang Cap Enak ',
                        style: blackTextStyle.copyWith(
                            fontSize: 14, fontWeight: semibold),
                        overflow: TextOverflow.ellipsis),
                    const SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Rp.50.000',
                      style: redTextStyle.copyWith(
                          fontSize: 12, fontWeight: medium),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 10),
                child: Image.asset(
                  'assets/images/tombolX.png',
                  width: 18,
                ),
              ),
            ],
          ),
        ),
      );
    }

    Widget chatInput() {
      return Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              productPreview(),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 45,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: redColor),
                      child: Center(
                        child: TextFormField(
                          style: whiteTextStyle.copyWith(
                              fontSize: 14, fontWeight: medium),
                          decoration: InputDecoration.collapsed(
                              hintText: 'Tulis pesan...',
                              hintStyle: whiteTextStyle.copyWith(
                                  fontSize: 14, fontWeight: medium)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Image.asset(
                      'assets/images/tombol.png',
                      width: 45,
                    ),
                  )
                ],
              ),
            ]),
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: const [
          ChatBubble(
            isSender: true,
            text: 'Ping',
          ),
          ChatBubble(
            isSender: false,
            text: 'Ping',
          ),
          ChatBubble()
        ],
      );
    }

    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            backgroundColor: redColor,
            centerTitle: false,
            title: Row(
              children: [
                Image.asset(
                  'assets/images/profile_icon_chat.png',
                  width: 40,
                ),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Warung Nasi Padang',
                      style: whiteTextStyle.copyWith(
                          fontSize: 14, fontWeight: medium),
                    ),
                    Text(
                      'Online',
                      style: whiteTextStyle.copyWith(
                          fontSize: 9, fontWeight: medium),
                    )
                  ],
                )
              ],
            ),
          )),
      bottomNavigationBar: chatInput(),
      body: content(),
    );
  }
}
