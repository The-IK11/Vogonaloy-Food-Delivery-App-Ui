import 'package:flutter/material.dart';
import 'package:vogonaloy_food_delivery_app/widgets_screens/cart_screen_models.dart';
import 'package:vogonaloy_food_delivery_app/widgets_screens/product_widget.dart';
class CartWidget extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: Cart_Item_data.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal:5,vertical: 2),
            child: products_widgets(height:100 , width: double.infinity,child:Cart_Item_data[index],),
          );
        },
      ),
    );
  }
}