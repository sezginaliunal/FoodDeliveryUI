import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';
import 'package:food_delivery/screens/cart_screen.dart';
import 'package:food_delivery/screens/foodMenu._screen.dart';
import 'package:food_delivery/screens/order_screen.dart';
import 'package:food_delivery/screens/signIn.dart';
import 'package:food_delivery/screens/welcome_screen.dart';

class CustomBottomNavigatonBar extends StatefulWidget {
  const CustomBottomNavigatonBar({Key? key});

  @override
  State<CustomBottomNavigatonBar> createState() =>
      _CustomBottomNavigatonBarState();
}

class _CustomBottomNavigatonBarState extends State<CustomBottomNavigatonBar> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int _currentIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _pages = [
      HomePageScreen(),
      FoodMenuScreen(),
      CartPage(),
      OrderScreen(),
      SignInScreen(),
    ];

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          unselectedItemColor: Colors.black,
          selectedItemColor: ColorItems.orange,
          currentIndex: _currentIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              label: "Home",
              backgroundColor: ColorItems.white,
              icon: Icon(
                Icons.home_outlined,
                color: _currentIndex == 0 ? ColorItems.orange : Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              backgroundColor: ColorItems.white,
              label: "Search",
              icon: Icon(
                Icons.search_outlined,
                color: _currentIndex == 1 ? ColorItems.orange : Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: "Cart",
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: ColorItems.orange,
                size: 40,
              ),
            ),
            BottomNavigationBarItem(
              label: "Order",
              icon: Icon(
                Icons.library_books_outlined,
                color: _currentIndex == 3 ? ColorItems.orange : Colors.black,
              ),
            ),
            BottomNavigationBarItem(
              label: "Account",
              icon: Icon(
                Icons.account_circle_sharp,
                color: _currentIndex == 4 ? ColorItems.orange : Colors.black,
              ),
            ),
          ],
        ),
        body: _pages[_currentIndex]);
  }
}
