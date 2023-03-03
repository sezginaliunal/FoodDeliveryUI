import 'package:flutter/material.dart';
import 'package:food_delivery/constants/TextStyles.dart';

class NearbyRow extends StatelessWidget {
  const NearbyRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String nearbyPlaces = "Nearby Places";
    String seeAll = "See all";
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          nearbyPlaces,
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