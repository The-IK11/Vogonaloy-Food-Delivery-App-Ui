import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vogonaloy_food_delivery_app/screens/notification_screen.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal:15 ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: (){
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 30,
                  width: 30,
                  decoration:BoxDecoration(
                    color:Colors.white,
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
                  child: Icon(CupertinoIcons.bars),
                ),
              ),
            ),
            Text("ভোজোনালয়",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30, shadows: [
              Shadow(
                offset: Offset(2.0, 2.0),
                blurRadius: 3.0,
                color: Colors.grey,
              ),

            ],),),
            InkWell(
              onTap: (){
                Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>NotificationScreen()));
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),

                child: Container(
                  height: 30,
                  width: 30,
                  decoration:BoxDecoration(
                    color:Colors.white,
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
                  child: Icon(Icons.notifications,color: Colors.red,),
                ),
              ),
            )
          ],
        ),
    );
  }
}

