import 'package:flutter/material.dart';
import 'package:food_delivery/constants/TextStyles.dart';
import 'package:food_delivery/constants/buttonStyles.dart';
import 'package:food_delivery/models/menu.dart';
import 'package:food_delivery/services/read_json_Menu.dart';

class OrderList extends StatelessWidget {
  const OrderList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ReadJsonDataMenu readJsonMenu = ReadJsonDataMenu();
    return FutureMenu(readJsonMenu);
  }

  FutureBuilder<List<Menu>> FutureMenu(ReadJsonDataMenu readJsonMenu) {
    return FutureBuilder(
        future: readJsonMenu.ReadJsonMenu(),
        builder: (context, data) {
          if (data.hasError) {
            return Center(
              child: Text("${data.error}"),
            );
          } else if (data.hasData) {
            var items = data.data as List<Menu>;
            return ListView.separated(
              shrinkWrap: true,
              itemCount: items == null ? 0 : items.length,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Container(
                    width: 50.0,
                    height: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(items[index].imageUrl.toString()),
                      ),
                    ),
                  ),
                  title: Text(items[index].title.toString(),
                      style: Styles.cartTitle),
                  subtitle: Text(items[index].subtitle.toString()),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text('${items[index].price.toString()}',
                          style: Styles.cartTitlePrice),
                      SizedBox(width: 16.0),
                      Buttons.orderButton(),
                    ],
                  ),
                  onTap: () {},
                  onLongPress: () {},
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
