import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/constants/height.dart';
import 'package:food_delivery/constants/TextStyles.dart';
import 'package:food_delivery/constants/buttonStyles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
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

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController _email = TextEditingController();
  TextEditingController _password = TextEditingController();
  TextEditingController _mobile = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    String tearms = "I accepted all tearms & conditions";
    String txt1 = "SIGN UP";
    String txt2 = "Completethis step for fivet adjustment";
    String haveAccountText = "I don't have an account";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: ColorItems.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
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
                  Height.twenty,
                  _field("Mobile", _mobile, false),
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
                      tearms,
                      style: Styles.rememberMeText,
                    )
                  ],
                ),
              ],
            ),
            Height.twenty,
            Buttons.signUpButon(),
            Height.twenty,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(haveAccountText),
                Buttons.haveAccountButon(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
