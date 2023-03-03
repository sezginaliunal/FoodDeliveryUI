import 'package:flutter/material.dart';
import 'package:food_delivery/models/restaurants.dart';
import 'package:food_delivery/services/read_json_populer.dart';

class RestaurantList extends StatelessWidget {
  const RestaurantList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ReadJsonDataPopuler dataPopuler = ReadJsonDataPopuler();
    return FuturePopuler(dataPopuler);
  }

  FutureBuilder<List<Restaurant>> FuturePopuler(
      ReadJsonDataPopuler dataPopuler) {
    return FutureBuilder(
      future: dataPopuler.ReadJsonPopuler(),
      builder: (context, data) {
        if (data.hasError) {
          return Center(
            child: Text("${data.error}"),
          );
        } else if (data.hasData) {
          var items = data.data as List<Restaurant>;
          return SizedBox(
            height: 150.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: items == null ? 0 : items.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.only(left: 10),
                  width: 200.0,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              image: DecorationImage(
                                image: AssetImage(
                                    items[index].imageUrl.toString()),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(items[index].title.toString(),
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(height: 5.0),
                      Text(items[index].description.toString(),
                          style: TextStyle(fontSize: 12.0, color: Colors.grey)),
                      SizedBox(height: 5.0),
                      Row(
                        children: [
                          Icon(Icons.star, size: 12.0, color: Colors.amber),
                          SizedBox(width: 5.0),
                          Text(items[index].rating.toString())
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}