import 'package:flutter/material.dart';
import 'package:food_delivery/constants/TextStyles.dart';
import 'package:food_delivery/constants/buttonStyles.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/constants/height.dart';
import 'package:food_delivery/models/cartItem.dart';
import 'package:food_delivery/screens/checkOut_screen.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  List<CartItem> _cartItems = [
    CartItem(
      name: 'Pizza',
      description: 'Delicious pizza with cheese and tomato sauce',
      image:
          'https://cdn.yemek.com/mnresize/1250/833/uploads/2015/01/sucuklu-pizza-yeni-onecikan.jpg',
      price: 10.0,
      quantity: 2,
    ),
    CartItem(
      name: 'Hamburger',
      description: 'Juicy burger with lettuce and tomato',
      image:
          'https://cdn.yemek.com/mnresize/940/940/uploads/2016/05/ev-yapimi-hamburger.jpg',
      price: 8.0,
      quantity: 1,
    ),
    CartItem(
      name: 'Sushi',
      description: 'Fresh sushi with salmon and avocado',
      image:
          'https://cdn.yemek.com/mnresize/940/940/uploads/2020/04/sushi-tarifi.jpg',
      price: 15.0,
      quantity: 3,
    ),
    CartItem(
      name: 'Sushi',
      description: 'Fresh sushi with salmon and avocado',
      image:
          'https://cdn.yemek.com/mnresize/940/940/uploads/2020/04/sushi-tarifi.jpg',
      price: 15.0,
      quantity: 3,
    ),
    CartItem(
      name: 'Sushi',
      description: 'Fresh sushi with salmon and avocado',
      image:
          'https://cdn.yemek.com/mnresize/940/940/uploads/2020/04/sushi-tarifi.jpg',
      price: 15.0,
      quantity: 3,
    ),
    CartItem(
      name: 'Sushi',
      description: 'Fresh sushi with salmon and avocado',
      image:
          'https://cdn.yemek.com/mnresize/940/940/uploads/2020/04/sushi-tarifi.jpg',
      price: 15.0,
      quantity: 3,
    ),
    CartItem(
      name: 'Sushi',
      description: 'Fresh sushi with salmon and avocado',
      image:
          'https://cdn.yemek.com/mnresize/940/940/uploads/2020/04/sushi-tarifi.jpg',
      price: 15.0,
      quantity: 3,
    ),
    CartItem(
      name: 'Sushi',
      description: 'Fresh sushi with salmon and avocado',
      image:
          'https://cdn.yemek.com/mnresize/940/940/uploads/2020/04/sushi-tarifi.jpg',
      price: 15.0,
      quantity: 3,
    ),
  ];

  double _totalPrice = 0.0;

  @override
  void initState() {
    super.initState();
    _calculateTotalPrice();
  }

  void _calculateTotalPrice() {
    double totalPrice = 0.0;
    for (CartItem item in _cartItems) {
      totalPrice += item.price * item.quantity;
    }
    setState(() {
      _totalPrice = totalPrice;
    });
  }

  String appCart = "Cart";
  String price = "\$";
  String total = "Total";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text(
          appCart,
          style: Styles.foodMenu,
        ),
      ),
      body: cartScreenBody(),
    );
  }

  Column cartScreenBody() {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: _cartItems.length,
            itemBuilder: (BuildContext context, int index) {
              return Dismissible(
                key: Key(_cartItems[index].name),
                direction: DismissDirection.endToStart,
                onDismissed: (direction) {
                  setState(() {
                    _cartItems.removeAt(index);
                  });
                  _calculateTotalPrice();
                },
                background: Container(
                  alignment: Alignment.centerRight,
                  color: Colors.red,
                  child: Padding(
                    padding: EdgeInsets.only(right: 10.0),
                    child: Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                ),
                child: ListTile(
                  leading: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    height: 60.0,
                    width: 60.0,
                    child: Image.network(
                      _cartItems[index].image,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(
                    _cartItems[index].name,
                    style: Styles.cartTitle,
                  ),
                  subtitle: Text(_cartItems[index].description),
                  trailing: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text("${_cartItems[index].price.toString()}",
                          style: Styles.cartTitle),
                      SizedBox(
                        width: 10,
                      ),
                      Text("$price", style: Styles.cartTitlePriceDollar),
                      SizedBox(
                        width: 15,
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: ColorItems.orange,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          color: ColorItems.orange,
                          icon: Icon(Icons.remove),
                          onPressed: () {
                            setState(() {
                              _cartItems[index].quantity--;
                              if (_cartItems[index].quantity == 0) {
                                _cartItems.removeAt(index);
                              }
                            });
                            _calculateTotalPrice();
                          },
                        ),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Text(_cartItems[index].quantity.toString()),
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: ColorItems.orange,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: IconButton(
                          icon: Icon(
                            Icons.add,
                            color: ColorItems.white,
                          ),
                          onPressed: () {
                            setState(() {
                              _cartItems[index].quantity++;
                            });
                            _calculateTotalPrice();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Height.twenty,
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              totalDetails(
                text: "Delivery Free",
                text1: "5.30",
                text2: "$price",
              ),
              totalDetails(
                text: "Total",
                text1: '${_totalPrice.toStringAsFixed(2)}',
                text2: "$price",
              ),
              Height.twenty,
              Buttons.checkOutButton(
                  text: "CHECKOUT",
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CheckoutPage()));
                  }),
            ],
          ),
        ),
      ],
    );
  }
}

class totalDetails extends StatelessWidget {
  String text;
  String text1;
  String text2;
  totalDetails({
    required this.text,
    required this.text1,
    required this.text2,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.00),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Row(
            children: [
              Text(
                text1,
                style: Styles.cartTitlePrice,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                text2,
                style: Styles.cartTitlePriceDollar,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
