import 'package:flutter/material.dart';
import 'package:food_delivery/models/nearbyPlaces.dart';

import '../services/read_json_nearby.dart';

class NearbyList extends StatelessWidget {
  const NearbyList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ReadJsonDataNearby readJsonNearby = ReadJsonDataNearby();
    return FutureNearby(readJsonNearby);
  }

  FutureBuilder<List<NearbyPlaces>> FutureNearby(ReadJsonDataNearby readJsonNearby) {
    return FutureBuilder(
      future: readJsonNearby.ReadJsonNearby(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(
            child: Text("${data.error}"),
          );
        } else if (data.hasData) {
          var items = data.data as List<NearbyPlaces>;
          items = items.take(3).toList();
          return ListView.builder(
            shrinkWrap: true,
            itemCount: items == null ? 0 : items.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.grey[200],
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5), // margin
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        AssetImage(items[index].imageUrl.toString()),
                  ),
                  title: Text(items[index].title.toString()),
                  subtitle: Text(items[index].subtitle.toString()),
                  trailing: Icon(Icons.food_bank_outlined),
                ),
              );
            },
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
        ;
      });
  }
}