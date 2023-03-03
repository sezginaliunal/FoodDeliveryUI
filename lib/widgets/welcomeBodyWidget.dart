import 'package:flutter/material.dart';
import 'package:food_delivery/constants/height.dart';
import 'package:food_delivery/constants/TextStyles.dart';
import 'package:food_delivery/widgets/nearbyRow.dart';
import 'package:food_delivery/widgets/nearbyWidget.dart';
import 'package:food_delivery/widgets/populerRow.dart';
import 'package:food_delivery/widgets/restaurantList.dart';
import 'package:food_delivery/widgets/searchField.dart';

class welcomeBodyWidget extends StatelessWidget {
  const welcomeBodyWidget({
    Key? key,
    required this.welcomeFoody,
  }) : super(key: key);

  final String welcomeFoody;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Height.twenty,
              Text(
                welcomeFoody,
                style: Styles.welcomeFoody,
              ),
              Height.twenty,
              buildSearchField(),
              Height.twenty,
              NearbyRow(),
              Height.twenty,
              NearbyList(),
              Height.twenty,
              PopulerRow(),
              Height.twenty,
              RestaurantList(),
            ],
          ),
        ),
      ),
    );
  }
}
