import 'package:flutter/material.dart';
import 'package:vogonaloy_food_delivery_app/widgets_screens/popular_models.dart';
import 'package:vogonaloy_food_delivery_app/widgets_screens/product_widget.dart';
class PopulerWidget extends StatelessWidget{
  const PopulerWidget({super.key});
  Widget build(BuildContext context){
    return Scaffold(
           body: ListView.builder(
             scrollDirection: Axis.horizontal,
               itemCount: popularData.length,
               itemBuilder: (context,index){
                return InkWell(
                  onTap: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Populer_SingleItmesWidget(items: popularData[index],)));
                  },
                    child: products_widgets(height: 200, width: 150,child:popularData[index],));
               }),
    );
  }
}