import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:food_delivery/constants/buttonStyles.dart';
import 'package:food_delivery/constants/height.dart';
import '../constants/TextStyles.dart';
import '../constants/colors.dart';

class FoodMenuScreen extends StatefulWidget {
  const FoodMenuScreen({Key? key}) : super(key: key);

  @override
  _FoodMenuScreenState createState() => _FoodMenuScreenState();
}

class _FoodMenuScreenState extends State<FoodMenuScreen> {
  List _items = [];
  String _selectedCategory = 'All';

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  Future<void> _loadData() async {
    final data = await rootBundle.loadString('data/menu.json');
    setState(() {
      _items = json.decode(data);
    });
  }

  List _getFilteredItems() {
    if (_selectedCategory == 'All') {
      return _items;
    } else {
      return _items
          .where((item) => item['category'] == _selectedCategory)
          .toList();
    }
  }

  String foodMenu = "Food Menu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          foodMenu,
          style: Styles.foodMenu,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              backgroundColor: ColorItems.orange,
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_cart,
                  color: ColorItems.white,
                ),
              ),
            ),
          )
        ],
      ),
      body: foodMenuList(),
    );
  }

  Widget foodMenuList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildCategory('All'),
            _buildCategory('FastFood'),
            _buildCategory('Soup'),
            _buildCategory('Sushi'),
            _buildCategory('Sweet'),
          ],
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(10.0),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 0.75,
            ),
            itemCount: _getFilteredItems().length,
            itemBuilder: (context, index) {
              final item = _getFilteredItems()[index];
              return Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: AssetImage(item['imageUrl']),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorItems.boldGrey,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    item['title'],
                                    style: Styles.menuList,
                                  ),
                                  Height.five,
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        item['price'],
                                        style: Styles.menuListPrice,
                                      ),
                                      Buttons.addToCartButton()
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildCategory(String category) {
    return TextButton(
      onPressed: () {
        setState(() {
          _selectedCategory = category;
        });
      },
      child: Container(
        child: Text(
          category,
          style: TextStyle(
            color: category == _selectedCategory
                ? ColorItems.orange
                : ColorItems.boldGrey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
