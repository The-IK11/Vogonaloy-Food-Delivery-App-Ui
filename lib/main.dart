import'package:flutter/material.dart';
import 'package:vogonaloy_food_delivery_app/screens/cart_screen.dart';
import 'package:vogonaloy_food_delivery_app/screens/home_page.dart';
import 'package:vogonaloy_food_delivery_app/screens/single_itmes_widget.dart';
import 'package:vogonaloy_food_delivery_app/widgets_screens/Cart_Widget.dart';
void main(){
  runApp(Vogonaloy_app());
}

class Vogonaloy_app  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFF5F5F3),
        primaryColor: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    //  home: Home_Page(),

    routes: {
        '/':(context)=>Home_Page(),
        //'/cart_screen':(context)=>CartWidget(),

      }

    );

  }
}