import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/constants/TextStyles.dart';
import 'package:food_delivery/widgets/drawer_widget.dart';
import 'package:food_delivery/widgets/welcomeBodyWidget.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    String delivery = "Deliver to";
    String space = "\n";
    String location = " Locations";
    String welcomeFoody = "Welcome Foody!";
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorItems.grey,
        elevation: 0,
        actions: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                "https://reqres.in/img/faces/7-image.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
        centerTitle: true,
        title: Column(
          children: [
            Text(
              delivery,
              style: Styles.deliveryText,
            ),
            Text(
              location,
              style: Styles.locationText,
            ),
          ],
        ),
      ),
      drawer: DrawerWidget(),
      body: welcomeBodyWidget(welcomeFoody: welcomeFoody),
    );
  }
}

Widget _buildListItem(place) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[200], // arka plan rengi
      borderRadius: BorderRadius.circular(15), // kenar yuvarlatma
    ),
    margin: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 5,
    ), // margin
    child: ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(
          place.imageUrl,
        ), // resim url'si
      ),
      title: Text(place.title), // başlık
      subtitle: Text(place.subtitle), // alt başlık
      trailing: const Icon(Icons.arrow_forward_ios), // ikon
    ),
  );
}
