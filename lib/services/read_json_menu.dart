import 'dart:convert';

import 'package:flutter/services.dart' as rootBundle;
import 'package:food_delivery/models/menu.dart';

class ReadJsonDataMenu {
  Future<List<Menu>> ReadJsonMenu() async {
    final jsonData = await rootBundle.rootBundle.loadString('data/menu.json');
    final list = json.decode(jsonData) as List<dynamic>;
    return list.map((e) => Menu.fromJson(e)).toList();
  }
}
