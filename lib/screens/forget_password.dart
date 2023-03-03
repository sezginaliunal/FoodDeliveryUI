import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/constants/height.dart';
import 'package:food_delivery/constants/TextStyles.dart';
import 'package:food_delivery/constants/buttonStyles.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

Widget _field(
  String title,
  TextEditingController controller,
) {
  return Container(
    padding: EdgeInsets.all(5),
    decoration: BoxDecoration(
      color: ColorItems.grey,
      borderRadius: BorderRadius.circular(8),
    ),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(hintText: title, border: InputBorder.none),
    ),
  );
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  TextEditingController _email = TextEditingController();
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    String tearms = "I accepted all tearms & conditions";
    String txt1 = "FORGOT PASSWORD";
    String txt2 = "Enter your mail or phone to request a password reset";
    String needHelpText = "Having Problem ?";
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
                  style: Styles.forgotPassScreenText,
                ),
                Text(txt2),
              ],
            ),
            Height.twenty,
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  _field(
                    "Email",
                    _email,
                  ),
                  Height.twenty,
                ],
              ),
            ),
            Buttons.sendNowButon(),
            Height.twoHundred,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(needHelpText),
                Buttons.needHelpButon(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
