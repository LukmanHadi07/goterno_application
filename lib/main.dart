import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:goterno_app/pages/cart_page.dart';
import 'package:goterno_app/pages/checkout_page.dart';
import 'package:goterno_app/pages/detail_chat_page.dart';
import 'package:goterno_app/pages/edit_profile_page.dart';
import 'package:goterno_app/pages/home/main_page.dart';
import 'package:goterno_app/pages/product_page.dart';
import 'package:goterno_app/pages/sign_in_screen.dart';
import 'package:goterno_app/pages/sign_up_screen.dart';
import 'package:goterno_app/pages/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign-in': (context) => const SignIn(),
        '/sign-up': (context) => const SignUp(),
        '/home': (context) => const MainPage(),
        '/detail_chat': (context) => const DetailChatPage(),
        '/edit-profile': (context) => const EditProfilPage(),
        '/product-page': (context) => const ProductPage(),
        '/cart-page': (context) => const CartPage(),
        '/checkout': (context) => const CheckoutPage(),
      },
    );
  }
}
