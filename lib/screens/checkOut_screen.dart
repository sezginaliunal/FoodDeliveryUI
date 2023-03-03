import 'package:flutter/material.dart';
import 'package:food_delivery/constants/TextStyles.dart';
import 'package:food_delivery/constants/buttonStyles.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/constants/height.dart';

class CheckoutPage extends StatefulWidget {
  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  String checkOutTitle = "Checkout";
  bool useCashOnDelivery = false;
  String price = "\$";
  String total = "Total";
  @override
  Widget build(BuildContext context) {
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
        title: Text(
          checkOutTitle,
          style: Styles.foodMenu,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextWidget(text: 'Delivery Details'),
          Column(
            children: [
              DeliveryDetails(text: "New York,Street 12,Calofony"),
              DeliveryDetails(
                text: "+880-17048-3990",
              ),
            ],
          ),
          TextWidget(text: 'Payment Method'),
          Height.five,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              PaymentMethodContainer(image: 'assets/images/visa.png'),
              PaymentMethodContainer(image: 'assets/images/mastercard.jpg'),
              PaymentMethodContainer(image: 'assets/images/paypal.jpg'),
              PaymentMethodContainer(image: 'assets/images/applepay.png'),
              PaymentMethodContainer(image: 'assets/images/googlepay.png'),
            ],
          ),
          Height.twenty,
          CheckboxListTile(
            activeColor: ColorItems.orange,
            value: useCashOnDelivery,
            onChanged: (value) {
              setState(() {
                useCashOnDelivery = value!;
              });
            },
            title: Text('Use cash on delivery'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(color: Colors.orange),
            ),
          ),
          Height.twenty,
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                totalDetails(
                  text: "Delivery Free",
                  text1: "5.30",
                  text2: "$price",
                ),
                totalDetails(
                  text: "Total",
                  text1: "20.50",
                  text2: "$price",
                ),
                Height.twenty,
                Buttons.checkOutButton(text: "CONFIRM"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DeliveryDetails extends StatelessWidget {
  String text;
  DeliveryDetails({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.00),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Buttons.changeButton(text: "Change"),
        ],
      ),
    );
  }
}

class totalDetails extends StatelessWidget {
  String text;
  String text1;
  String text2;
  totalDetails({
    required this.text,
    required this.text1,
    required this.text2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.00),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Row(
            children: [
              Text(
                text1,
                style: Styles.cartTitlePrice,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                text2,
                style: Styles.cartTitlePriceDollar,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class TextWidget extends StatelessWidget {
  String? text = "Text";

  TextWidget({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        text!,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class PaymentMethodContainer extends StatelessWidget {
  final String? image;

  const PaymentMethodContainer({Key? key, @required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 64,
      height: 64,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        image: DecorationImage(
          image: AssetImage(image!),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
