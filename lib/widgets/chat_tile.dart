import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/detail_chat');
      },
      child: Container(
        margin: const EdgeInsets.only(top: 33),
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/icon_profile_chat_message.png',
                  width: 50,
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Warung Padang',
                        style: redTextStyle.copyWith(
                            fontSize: 14, fontWeight: semibold),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Apakah Masih ada kak ? ',
                        style: blackTextStyle.copyWith(
                            fontSize: 12, fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style:
                      blackTextStyle.copyWith(fontSize: 10, fontWeight: light),
                )
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const Divider(
              thickness: 1,
              color: Colors.red,
            )
          ],
        ),
      ),
    );
  }
}
