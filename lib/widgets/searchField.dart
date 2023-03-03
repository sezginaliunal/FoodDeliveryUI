import 'package:flutter/material.dart';
import 'package:food_delivery/constants/colors.dart';

class buildSearchField extends StatefulWidget {
  const buildSearchField({super.key});

  @override
  State<buildSearchField> createState() => _buildSearchFieldState();
}

class _buildSearchFieldState extends State<buildSearchField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorItems.grey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10), // sol padding
            child: Icon(Icons.search), // arama butonu
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: "Find Your Food", // text
                border: InputBorder.none, // kenarlık yok
                contentPadding:
                    const EdgeInsets.symmetric(vertical: 15), // yükseklik
              ),
            ),
          ),
        ],
      ),
    );
  }
}
