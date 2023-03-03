import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/constants/height.dart';
import 'package:food_delivery/constants/TextStyles.dart';
import 'package:food_delivery/constants/buttonStyles.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

Widget _field(
  String title,
  TextEditingController controller,
  bool obscure,
) {
  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: ColorItems.grey,
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(hintText: title, border: InputBorder.none),
    ),
  );
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool rememberMe = true;
  String rememberMeTxt = "Remember Me";
  @override
  Widget build(BuildContext context) {
    String txt1 = "SIGN IN";
    String txt2 = "Completethis step for fivet adjustment";
    String haveAccountText = "I don't have an account";
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16),
        child: ListView(
          children: [
            Height.fifty,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  txt1,
                  style: Styles.signUpScreenText1,
                ),
                Height.five,
                Text(txt2),
              ],
            ),
            Height.twenty,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  _field("Email", _email, false),
                  Height.twenty,
                  _field("Password", _password, true),
                ],
              ),
            ),
            Height.five,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Switch(
                      value: rememberMe,
                      onChanged: (newValue) {
                        setState(() {
                          rememberMe = newValue;
                        });
                      },
                      activeColor: ColorItems.white,
                      inactiveThumbColor: ColorItems.white,
                      inactiveTrackColor: Colors.grey,
                      activeTrackColor: ColorItems.orange,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    Text(
                      rememberMeTxt,
                      style: Styles.rememberMeText,
                    )
                  ],
                ),
                Buttons.forgotPasswordButon(onPressed: () {
                  Navigator.pushNamed(context, "forgotPassword");
                }),
              ],
            ),
            Height.twenty,
            Buttons.signInButon(onPressed: () {
              Navigator.pushNamed(context, "CustomBottomNavigatonBar");
            }),
            Height.twenty,
            Buttons.facebookButon(),
            Height.twenty,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(haveAccountText),
                Buttons.haveAccountButon(onPressed: () {
                  Navigator.pushNamed(context, "signUp");
                }),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
