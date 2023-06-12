// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:goterno_app/themes.dart';

class CustomTextFormFields extends StatelessWidget {
  const CustomTextFormFields({
    Key? key,
    required this.labeltext,
    this.onChangad,
    required this.imagePath,
    required this.hintext,
  }) : super(key: key);
  final String labeltext;
  final Function(String)? onChangad;
  final String imagePath;
  final String hintext;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            labeltext,
            style: blackTextStyle.copyWith(fontSize: 20.0, fontWeight: regular),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Container(
            height: 50.0,
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            decoration: BoxDecoration(
              color: whiteColor,
              border: Border.all(
                color: redColor,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    imagePath,
                    width: 20,
                  ),
                  const SizedBox(
                    width: 17.0,
                  ),
                  Expanded(
                      child: TextFormField(
                    decoration: InputDecoration.collapsed(hintText: hintext),
                  ))
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
