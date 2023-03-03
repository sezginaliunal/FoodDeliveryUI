import 'package:flutter/material.dart';
import 'package:food_delivery/screens/checkOut_screen.dart';
import 'package:food_delivery/screens/foodMenu._screen.dart';
import 'package:food_delivery/screens/forget_password.dart';
import 'package:food_delivery/widgets/customBottomNav.dart';
import 'package:food_delivery/screens/onboarding_screen_1.dart';
import 'package:food_delivery/screens/onboarding_screen_2.dart';
import 'package:food_delivery/screens/onboarding_screen_3.dart';
import 'package:food_delivery/screens/signIn.dart';
import 'package:food_delivery/screens/signUp.dart';
import 'package:food_delivery/screens/splash_screen.dart';
import 'package:food_delivery/screens/welcome_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.poppinsTextTheme().copyWith(),
      ),
      title: 'Food Delivery',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) => SplashScreen(),
        "homeScreen": (context) => const HomePageScreen(),
        "onBoardingOne": (context) => const OnBoardingOneScreen(),
        "onBoardingTwo": (context) => const OnBoardingTwoScreen(),
        "onBoardingThree": (context) => const OnBoardingThreeScreen(),
        "signIn": (context) => const SignInScreen(),
        "signUp": (context) => const SignUpScreen(),
        "forgotPassword": (context) => const ForgotPasswordScreen(),
        "FoodMenuScreen": (context) => const FoodMenuScreen(),
        "CustomBottomNavigatonBar": (context) =>
            const CustomBottomNavigatonBar(),
            "checkOutPage": (context) => CheckoutPage(),
      },
    );
  }
}
