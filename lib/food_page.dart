import 'package:flutter/material.dart';
import 'package:restaurant_app/menuitemcard.dart';
import 'package:restaurant_app/model/food_data.dart';

class FoodPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key){
          return MenuItemCard(index: key);
        },
      ),
    );
  }
}
