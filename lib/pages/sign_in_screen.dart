import 'package:flutter/material.dart';
import 'package:goterno_app/themes.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    // Method Header
    Widget headerSignIn() {
      return Container(
          margin: const EdgeInsets.only(top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: blackTextStyle.copyWith(
                    fontSize: 40.0, fontWeight: semibold),
              ),
              Text(
                'Sign in the continue',
                style:
                    blackTextStyle.copyWith(fontSize: 14.0, fontWeight: medium),
              ),
            ],
          ));
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(top: 70.0),
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
                      'assets/images/icon_email.png',
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

    Widget password() {
      return Container(
        margin: const EdgeInsets.only(top: 20.0),
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
                      'assets/images/icon_password.png',
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

    Widget signInButton() {
      return Container(
        height: 50.0,
        width: double.infinity,
        margin: const EdgeInsets.only(top: 30.0),
        child: TextButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, '/home');
          },
          style: TextButton.styleFrom(
              backgroundColor: redColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10))),
          child: Text(
            'Login',
            style: whiteTextStyle.copyWith(fontSize: 20.0, fontWeight: bold),
          ),
        ),
      );
    }

    Widget footerSignIn() {
      return SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Don\'t have an account?',
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
                Navigator.pushNamed(context, '/sign-up');
              },
              child: Text(
                'Sign Up',
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerSignIn(),
                emailInput(),
                password(),
                signInButton(),
                const SizedBox(
                  height: 230.0,
                ),
                footerSignIn(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
