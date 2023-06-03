import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    Widget headerSignUp() {
      return Container(
          margin: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Register',
                style: blackTextStyle.copyWith(
                    fontSize: 40.0, fontWeight: semibold),
              ),
              Text(
                'Register and Happy Shopping Food',
                style:
                    blackTextStyle.copyWith(fontSize: 14.0, fontWeight: medium),
              ),
            ],
          ));
    }

    Widget fullnameSignUp() {
      return Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Fullname',
              style: blackTextStyle.copyWith(
                fontSize: 20.0,
                fontWeight: regular,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              height: 50.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: blackColor,
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_account_fullname.png',
                      width: 20.0,
                    ),
                    const SizedBox(
                      width: 17.0,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Enter Your Fullname',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // method for usernameSignUp
    Widget usernameSignUp() {
      return Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Username',
              style: blackTextStyle.copyWith(
                fontSize: 20.0,
                fontWeight: regular,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              height: 50.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: blackColor,
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/circle_username.png',
                      width: 20.0,
                    ),
                    const SizedBox(
                      width: 17.0,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Enter Your Username',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // method for emailAddress
    Widget emailSignUp() {
      return Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Email Address',
              style: blackTextStyle.copyWith(
                fontSize: 20.0,
                fontWeight: regular,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              height: 50.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: blackColor,
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_email_black_for_sign_up.png',
                      width: 20.0,
                    ),
                    const SizedBox(
                      width: 17.0,
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Enter Your Email',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    // method passwordSignUp
    Widget passwordSignup() {
      return Container(
        margin: const EdgeInsets.only(top: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Password',
              style: blackTextStyle.copyWith(
                fontSize: 20.0,
                fontWeight: regular,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Container(
              height: 50.0,
              padding: const EdgeInsets.symmetric(
                horizontal: 16.0,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: blackColor,
                ),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/images/icon_password_black_sign_up.png',
                      width: 20.0,
                    ),
                    const SizedBox(
                      width: 17.0,
                    ),
                    Expanded(
                      child: TextFormField(
                        obscureText: _obscureText,
                        decoration: const InputDecoration.collapsed(
                          hintText: 'Enter Your password',
                        ),
                      ),
                    ),
                    Switch(
                        value: _obscureText,
                        onChanged: (value) {
                          setState(() {
                            _obscureText = value;
                          });
                        })
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }

    Widget signUpButton() {
      return Container(
        height: 50.0,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 40.0),
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          style: TextButton.styleFrom(
              backgroundColor: redColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            'Register',
            style: whiteTextStyle.copyWith(fontSize: 20.0, fontWeight: bold),
          ),
        ),
      );
    }

    Widget footerSignUp() {
      return SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have on account ? ',
              style: blackTextStyle.copyWith(
                fontSize: 14.0,
                fontWeight: medium,
              ),
            ),
            const SizedBox(
              width: 5.0,
            ),
            GestureDetector(
              onTap: () {
                Navigator.popAndPushNamed(context, '/sign-in');
              },
              child: Text(
                'Sign in',
                style: redTextStyle.copyWith(fontWeight: medium),
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            margin: EdgeInsets.symmetric(
              horizontal: defaultMargin,
            ),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              headerSignUp(),
              fullnameSignUp(),
              usernameSignUp(),
              emailSignUp(),
              passwordSignup(),
              signUpButton(),
              const SizedBox(
                height: 50.0,
              ),
              footerSignUp()
            ]),
          ),
        ),
      ),
    );
  }
}
