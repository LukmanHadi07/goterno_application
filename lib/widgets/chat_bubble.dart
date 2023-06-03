import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class ChatBubble extends StatelessWidget {
  final String text;
  final bool isSender;

  const ChatBubble({super.key, this.isSender = false, this.text = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Flexible(
              child: Container(
            constraints: BoxConstraints(
                maxWidth: MediaQuery.of(context).size.width * 0.6),
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: isSender ? redColor : Colors.green),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isSender ? 12 : 0),
                  topRight: Radius.circular(isSender ? 0 : 12),
                  bottomLeft: const Radius.circular(12),
                  bottomRight: const Radius.circular(12)),
            ),
            child: Text(
              text,
              style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
            ),
          )),
        ],
      ),
    );
  }
}
