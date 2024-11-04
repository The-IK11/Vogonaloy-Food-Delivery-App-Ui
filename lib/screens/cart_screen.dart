import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vogonaloy_food_delivery_app/screens/home_page.dart';
import 'package:vogonaloy_food_delivery_app/widgets_screens/AppBar_Widget.dart';
import 'package:vogonaloy_food_delivery_app/widgets_screens/Cart_Widget.dart';
import 'package:vogonaloy_food_delivery_app/widgets_screens/product_widget.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                    BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0,3)
                  )
                ]
                    ),

                    child: IconButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Home_Page()));
                    }, icon:Icon(Icons.arrow_back),),
                  ),
                  Text("ভোজোনালয়",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold,fontSize: 30, shadows: [
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Colors.grey.shade400,
                    ),

                  ],),),

                  Container(
                      decoration:BoxDecoration(
                          color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 10,
                                offset: Offset(0,3)
                            )
                          ]
                      ),

                      child: IconButton(onPressed: (){}, icon:Icon(Icons.notifications,color: Colors.red,)))
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView(
              children: [

                Padding(padding: EdgeInsets.only(
                  top: 15,
                ),
                child: Container(
                  width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 10,
                              offset: Offset(0,3)
                          )
                        ]
                    ),
                    child: Center(child: Text("Order List",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),))),),
                Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
                child: Container(
                     height: 360,
                     width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.red
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: CartWidget(),
                  ),
                ),),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                      height: 160,
                      color: Colors.red,
                      width: double.infinity,
                      child: products_widgets(height: 160, width: double.infinity
                          ,child: Padding(padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Items",style: TextStyle(color: Colors.black),),
                                Text("9",style: TextStyle(color: Colors.red),)
                              ],
                            ),
                            Divider(
                              color: Colors.red,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Sub-total",style: TextStyle(color: Colors.black),),
                                Text("\$450",style: TextStyle(color: Colors.red),)
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Delivery",style: TextStyle(color: Colors.black),),
                                Text("\$20",style: TextStyle(color: Colors.red),)
                              ],
                            ),
                            Divider(
                              color: Colors.grey,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Total",style: TextStyle(color: Colors.black),),
                                Text("\$470",style: TextStyle(color:Colors.red),)
                              ],
                            ),
                          ],
                        ),),
                      )),

                )
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(12),

                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: Offset(0, 3),
                  )
                ]),
            child: Padding(padding:EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(text: TextSpan(
                    text:  "Total ",style: TextStyle(fontSize: 17,color: Colors.black,fontWeight: FontWeight.bold),
                    children: [
                      TextSpan(
                        text:  "\$470",style: TextStyle(fontSize: 17,color: Colors.red,fontWeight: FontWeight.bold),
                      ),
                    ]
                  ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(9.0),
                  child: ElevatedButton(onPressed: (){}, child:Text("Order",style: TextStyle(color: Colors.white,fontSize: 20),),style:ElevatedButton.styleFrom(backgroundColor: Colors.red,minimumSize: Size(60,200)),),
                )
              ],
            ),),
          )

        ],
      )
    );
  }
}
