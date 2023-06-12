// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class TextandImageAccount extends StatelessWidget {
  final String title;
  final String imagePath;
  const TextandImageAccount({
    Key? key,
    required this.title,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: blackTextStyle.copyWith(fontSize: 14, fontWeight: medium),
        ),
        Image.asset(
          imagePath,
          width: 25,
        ),
      ],
    );
  }
}
