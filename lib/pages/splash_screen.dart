import 'dart:async';

import 'package:flutter/material.dart';
import 'package:goterno_app/assets.dart';
import 'package:goterno_app/themes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 7),
        () => Navigator.pushNamed(context, '/sign-in'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100.0),
                child: Container(
                  width: double.infinity,
                  height: 250.0,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        AssetsImages.logoGoternoPng,
                      ),
                    ),
                  ),
                ),
              ),
              Text(
                'GOTERNO',
                style: redTextStyle.copyWith(
                  fontSize: 64.0,
                  fontWeight: bold,
                ),
              ),
              Text(
                'APP',
                style: blackTextStyle.copyWith(
                  fontSize: 64.0,
                  fontWeight: bold,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
