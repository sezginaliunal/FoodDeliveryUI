import 'dart:convert';

import 'package:flutter/services.dart' as rootBundle;
import 'package:food_delivery/models/restaurants.dart';

class ReadJsonDataPopuler {
  Future<List<Restaurant>> ReadJsonPopuler() async {
    final jsonData =
        await rootBundle.rootBundle.loadString('data/populerPlaces.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => Restaurant.fromJson(e)).toList();
  }
}
