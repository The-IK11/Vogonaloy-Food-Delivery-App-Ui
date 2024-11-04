import 'package:flutter/material.dart';
import 'package:vogonaloy_food_delivery_app/screens/single_itmes_widget.dart';
import 'package:vogonaloy_food_delivery_app/widgets_screens/new_items_model.dart';
import 'package:vogonaloy_food_delivery_app/widgets_screens/product_widget.dart';
class New_items extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: New_Item_data1.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal:5,vertical: 2),
            child: InkWell(
              onTap: (){
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>SingleItmesWidget(items: New_Item_data[index],)))
;            //    Navigator.pushNamed(context, '/new_items_details_screen');
              },
                child: products_widgets(height:150 , width: double.infinity,child: New_Item_data1[index],)),
          );
        },
      ),
    );
  }
}
