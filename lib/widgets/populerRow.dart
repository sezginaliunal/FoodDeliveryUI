import 'package:flutter/material.dart';
import 'package:food_delivery/constants/TextStyles.dart';

class PopulerRow extends StatelessWidget {
  const PopulerRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String populerRestaurants = "Populer Restaurants";
    String seeAll = "See all";
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          populerRestaurants,
          style: Styles.places,
        ),
        TextButton(
          onPressed: () {},
          child: Text(seeAll, style: Styles.seeAll),
        ),
      ],
    );
  }
}