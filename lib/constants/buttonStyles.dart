import 'package:flutter/material.dart';
import 'package:food_delivery/constants/TextStyles.dart';
import 'colors.dart';

class Buttons {
  static ElevatedButton continueButon({String? text, Function()? onPressed}) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => ColorItems.orange),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "CONTINUE",
          style: Styles.continueText,
        ),
      ),
    );
  }

  static ElevatedButton checkOutButton({String? text, Function()? onPressed}) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => ColorItems.orange),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          text!,
          style: Styles.continueText,
        ),
      ),
    );
  }

  static ElevatedButton signInButon({String? text, Function()? onPressed}) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => ColorItems.orange),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "SIGN IN",
          style: Styles.continueText,
        ),
      ),
    );
  }

  static ElevatedButton signUpButon({String? text, Function()? onPressed}) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => ColorItems.orange),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "SIGN UP",
          style: Styles.continueText,
        ),
      ),
    );
  }

  static ElevatedButton sendNowButon({String? text, Function()? onPressed}) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => ColorItems.orange),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "SEND NOW",
          style: Styles.continueText,
        ),
      ),
    );
  }

  static ElevatedButton facebookButon({String? text, Function()? onPressed}) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => ColorItems.boldBlue),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(
          "SIGN IN WITH FACEBOOK",
          style: Styles.facebookTxt,
        ),
      ),
    );
  }

  static ElevatedButton addToCartButton({String? text, Function()? onPressed}) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => ColorItems.orange),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Text(
          "Add to Cart",
          style: Styles.addToCartButtonTxt,
        ),
      ),
    );
  }

  static TextButton forgotPasswordButon({String? text, Function()? onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        "Forgot Password",
        style: Styles.forgotPasswordText,
      ),
    );
  }

  static TextButton changeButton({String? text = "", Function()? onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text!,
        style: Styles.changeButton,
      ),
    );
  }

  static TextButton orderButton({String? text, Function()? onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        "Order Again",
        style: Styles.orderButtonText,
      ),
    );
  }

  static TextButton haveAccountButon({String? text, Function()? onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        "Sign Up",
        style: Styles.haveAccountText,
      ),
    );
  }

  static TextButton needHelpButon({String? text, Function()? onPressed}) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        "Need Help",
        style: Styles.needHelpText,
      ),
    );
  }
}
