import 'package:flutter/material.dart';
import 'package:food_delivery/constants/TextStyles.dart';
import 'package:food_delivery/widgets/MenuList.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  String title = "My Order";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            title,
            style: Styles.myOrderText,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(
          children: [
            Divider(),
            Expanded(child: OrderList()),
          ],
        ));
  }
}
