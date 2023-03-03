import 'dart:convert';

import 'package:flutter/services.dart' as rootBundle;
import 'package:food_delivery/models/nearbyPlaces.dart';

class ReadJsonDataNearby{
   Future<List<NearbyPlaces>> ReadJsonNearby() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('data/nearbyPlaces.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => NearbyPlaces.fromJson(e)).toList();
  }
}