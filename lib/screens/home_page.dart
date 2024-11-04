import"package:flutter/material.dart";
import "package:vogonaloy_food_delivery_app/screens/cart_screen.dart";
import "package:vogonaloy_food_delivery_app/widgets_screens/AppBar_Widget.dart";
import "package:vogonaloy_food_delivery_app/widgets_screens/New_Items_widget.dart";
import "package:vogonaloy_food_delivery_app/widgets_screens/Popular_screen_widget.dart";
import "package:vogonaloy_food_delivery_app/widgets_screens/category_widget.dart";

import "../widgets_screens/drawer_widget.dart";
import "../widgets_screens/product_widget.dart";
class Home_Page extends StatefulWidget{
   const Home_Page({super.key});
   State<Home_Page>createState()=>_Home_Page();
}
class _Home_Page extends State<Home_Page>{
  Widget build(BuildContext context ){
    return Scaffold(
      drawer: DrawerWidgets(),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(onPressed: (){
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CartScreen()));
        },child: Icon(Icons.shopping_cart,color:Colors.white),backgroundColor: Colors.red,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),elevation: 10,),
      ),
      body:
          ListView(
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        blurRadius: 10,
                        spreadRadius: 2,
                        offset: Offset(0,3)
                    )
                  ],
                  color: Colors.red,
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
                ),
                child: Column(
                  children: [
                    AppbarWidget(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal:15),
                      child: Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.3),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                  offset: Offset(0,3)
                              )
                            ]
                        ),
                        child:Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Icon(Icons.search,color: Colors.red,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 15),
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                      hintText: "Search whats are you want ",
                                      border:InputBorder.none,

                                    ),
                                  ),
                                ),
                              ),
                              Icon(Icons.restaurant_menu_rounded)

                            ],
                          ),),
                      ),
                    ),
                  ],
                ),
              ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Text("Category",style: TextStyle(fontSize: 20,color:Colors.black,fontWeight: FontWeight.bold),)),
            Container(
             height: 70,
              width: double.infinity,
              child: CategoryWidget(),
            ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 14,
                ),
                child: Text("Popular",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),

              ),
              Container(
                height: 201,
                width: double.infinity,
                child: PopulerWidget(),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 5,
                ),
                child: Container(
                  width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: Offset(0,3)
                        )
                      ],

                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("New Items",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                    )),

              ),
              Container(
                 height: 2120,
                  width: double.infinity,
                  child: New_items())
            ],
          ),

    );

  }
}
