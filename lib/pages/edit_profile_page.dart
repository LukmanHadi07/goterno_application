import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';
import 'package:goterno_app/widgets/custom_textform_field.dart';

class EditProfilPage extends StatelessWidget {
  const EditProfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: defaultMargin),
              width: 100,
              height: 100,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/icon_profile_red.png'))),
            ),
          ],
        ),
      );
    }

    Widget customTextFormFields() {
      return const Column(
        children: [
          CustomTextFormFields(
            labeltext: 'Nama',
            imagePath: 'assets/images/icon_account_fullname.png',
            hintext: 'Nama Lengkap',
          ),
          CustomTextFormFields(
            labeltext: 'Username',
            imagePath: 'assets/images/icon_account_fullname.png',
            hintext: 'Username',
          ),
          CustomTextFormFields(
            labeltext: 'Email Address',
            imagePath: 'assets/images/icon_email_black_for_sign_up.png',
            hintext: 'Email',
          ),
          CustomTextFormFields(
            labeltext: 'Phone Number',
            imagePath: 'assets/images/telepon.png',
            hintext: 'Nomer Telepon',
          ),
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: redColor,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: const Text('Edit Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.check),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child: Column(
              children: [content(), customTextFormFields()],
            ),
          ),
        ),
      ),
    );
  }
}
