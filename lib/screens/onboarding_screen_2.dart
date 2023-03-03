import 'package:flutter/material.dart';
import 'package:food_delivery/constants/TextStyles.dart';
import '../constants/buttonStyles.dart';
import '../constants/height.dart';

class OnBoardingTwoScreen extends StatelessWidget {
  const OnBoardingTwoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String txt1 = "Gps Tracking";
    String txt2 =
        "Loved the class! Such beautiful land and collective impact infrastructure social entrepreneur.";
    return Scaffold(
      body: Body(txt1, txt2, context),
    );
  }

  Body(String txt1, String txt2, BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Image.asset(
                      'assets/images/onboarding_2.png',
                    ),
                  ),
                  Height.fifty,
                  Center(
                    child: Text(
                      txt1,
                      style: Styles.onBoardingTxt1,
                    ),
                  ),
                  Height.five,
                  Text(
                    txt2,
                    style: Styles.onBoardingTxt2,
                  ),
                  Height.twenty,
                  Buttons.continueButon(
                    onPressed: () {
                      Navigator.pushReplacementNamed(
                          context, "onBoardingThree");
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
