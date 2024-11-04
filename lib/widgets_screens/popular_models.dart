import 'package:flutter/material.dart';
import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

import '../screens/home_page.dart';
import '../widgets_screens/new_items_model.dart';

class PopularModels extends StatelessWidget {
  final String image;
  final String title;
  final String sub_title;
  final String description;
  final String price;
  const PopularModels({super.key, required this.image, required this.title, required this.sub_title, required this.price, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Container(
            width: double.infinity,
            decoration:BoxDecoration(
              border:Border.all(
                color:Colors.red,
              ),
            ),
              child: Image.network(image,height: 80,width: 80,)),
          Container(

            child:Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(title,style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold,),),
                ),
                Text(sub_title,style: TextStyle(fontSize: 11,color: Colors.grey),),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("$price",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                      Icon(Icons.favorite_outline,color: Colors.red,)
                    ],
                  ),
                )              ],
            ) ,
          ),

        ],
      ),)
    );
  }
}
List<PopularModels> popularData = [
  PopularModels(
    image: "https://png.pngtree.com/png-clipart/20231017/original/pngtree-burger-food-png-free-download-png-image_13329458.png",
    title: "Burger",
    sub_title: "Test your hot burger",
    price: "\$100",
    description: "Test your hot burger with a juicy patty, fresh toppings, and a perfectly toasted bun. A classic favorite for all burger lovers.",
  ),
  PopularModels(
    image: "https://png.pngtree.com/png-vector/20230331/ourmid/pngtree-gourmet-pizza-cartoon-png-image_6656160.png",
    title: "Pizza",
    sub_title: "Delicious cheese pizza",
    price: "\$150",
    description: "Enjoy a delicious cheese pizza topped with gooey mozzarella and your choice of toppings. Perfect for sharing or enjoying solo!",
  ),
  PopularModels(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzLTZ2NEMPl1UKl5PALQc4fcwqVTEDkj-ecg&s",
    title: "Sushi",
    sub_title: "Fresh sushi rolls",
    price: "\$200",
    description: "Fresh sushi rolls crafted with high-quality fish and perfectly seasoned rice, served with soy sauce and wasabi for an authentic experience.",
  ),
  PopularModels(
    image: "https://www.onceuponachef.com/images/2023/08/Beef-Tacos.jpg",
    title: "Tacos",
    sub_title: "Spicy beef tacos",
    price: "\$120",
    description: "Spicy beef tacos packed with flavor and topped with fresh ingredients. A must-try for taco enthusiasts!",
  ),
  PopularModels(
    image: "https://static.vecteezy.com/system/resources/thumbnails/046/437/566/small_2x/mix-salad-transparent-background-png.png",
    title: "Salad",
    sub_title: "Healthy green salad",
    price: "\$90",
    description: "A healthy green salad featuring a mix of crisp vegetables and a light dressing, perfect for a refreshing meal.",
  ),
  PopularModels(
    image: "https://static.vecteezy.com/system/resources/thumbnails/027/144/753/small/penne-pasta-with-tomato-sauce-parmesan-cheese-and-basil-on-transparent-background-png.png",
    title: "Pasta",
    sub_title: "Creamy Alfredo pasta",
    price: "\$180",
    description: "Creamy Alfredo pasta made with rich sauce and topped with grated parmesan. Comfort food at its best!",
  ),
  PopularModels(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2pdMAoF6UzV5-OB6Jpl0Xj2r8bpiGF9I6Hw&s",
    title: "Sandwich",
    sub_title: "Fresh deli sandwich",
    price: "\$110",
    description: "A fresh deli sandwich stacked with quality meats, cheese, and fresh veggies, served on artisan bread.",
  ),
  PopularModels(
    image: "https://static.vecteezy.com/system/resources/previews/024/108/126/non_2x/tasty-colorful-ice-cream-cup-with-syrups-and-fruits-on-transparent-background-png.png",
    title: "Ice Cream",
    sub_title: "Cool ice cream scoop",
    price: "\$80",
    description: "Cool off with a scoop of delightful ice cream, available in various flavors and topped with syrups and fruits.",
  ),
  PopularModels(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaBw58kd6GT93J4VS3XP1U6X-4wmgCumWD5Q&s",
    title: "Steak",
    sub_title: "Juicy grilled steak",
    price: "\$250",
    description: "A juicy grilled steak cooked to perfection, bursting with flavor and served with your choice of sides. Ideal for meat lovers!",
  ),
  PopularModels(
    image: "https://png.pngtree.com/png-vector/20240130/ourmid/pngtree-cupcake-png-with-ai-generated-png-image_11571382.png",
    title: "Cupcake",
    sub_title: "Sweet cupcake treat",
    price: "\$60",
    description: "A sweet cupcake treat topped with creamy frosting, perfect for dessert lovers looking for a little indulgence.",
  ),
];



class Populer_SingleItmesWidget extends StatefulWidget {
  final PopularModels items;
  const Populer_SingleItmesWidget({super.key, required this.items});


  @override
  State<Populer_SingleItmesWidget> createState() => _Populer_SingleItmesWidget();
}

class _Populer_SingleItmesWidget extends State<Populer_SingleItmesWidget> {

  @override
  Widget build(BuildContext context) {
    double rating=3.5;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView(
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
                Padding(padding:EdgeInsets.all(8.0),
                  child:Image.network(widget.items.image,height: 300,fit: BoxFit.cover,),),
                Arc(
                    edge: Edge.TOP,
                    arcType: ArcType.CONVEX,
                    height: 30,

                    child: Container(
                      color: Colors.white,
                      width: double.infinity,
                      child: Column(
                        children: [
                          Padding(padding:EdgeInsets.only(top:40 ,bottom: 20,left: 20,right: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                PannableRatingBar(
                                  rate:rating ,
                                  items: List.generate(5, (index) =>
                                  const RatingWidget(
                                    selectedColor: Colors.yellow,
                                    unSelectedColor: Colors.grey,
                                    child: Icon(
                                      Icons.star,
                                      size: 27,
                                    ),
                                  )),
                                  onChanged: (value) { // the rating value is updated on tap or drag.
                                    setState(() {

                                    });
                                  },
                                ),
                                Text("${widget.items.price}",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
                              ],
                            ),),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("${widget.items.title}",style: TextStyle(color: Colors.black,fontSize: 22,fontWeight: FontWeight.bold),),
                                Row(

                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Container(
                                        height: 25,
                                        width: 75,
                                        decoration: BoxDecoration(
                                            color: Colors.red,
                                            borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Row(
                                          children: [
                                            InkWell(
                                              onTap:(){},
                                              child: Container(
                                                width:15,
                                                height: MediaQuery.of(context).size.width,
                                                child: Icon(Icons.add,size: 14,color: Colors.black,),),
                                            ),
                                            VerticalDivider(
                                              color: Colors.white,
                                            ),
                                            Container(
                                                width:8,
                                                height: MediaQuery.of(context).size.width,
                                                child: Center(child: Text("1",style: TextStyle(color: Colors.black,fontSize: 10),))),
                                            VerticalDivider(
                                              color: Colors.white,
                                            ),
                                            InkWell(
                                              onTap: (){},
                                              child: Container( width:15,
                                                  height: MediaQuery.of(context).size.width,
                                                  child:Icon(Icons.remove,size: 14,)),
                                            ),
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 25,horizontal: 12),
                            child: Text(widget.items.description,style: TextStyle(fontSize: 15,color:Colors.black),),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 18),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Deliver Time",style: TextStyle(color: Colors.red,fontSize: 15,fontStyle: FontStyle.italic,fontWeight: FontWeight.bold),),
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Icon(Icons.punch_clock,color: Colors.red,),
                                    ),
                                    Text("30 Minutes",style: TextStyle(color: Colors.black,fontSize: 15,fontStyle: FontStyle.italic),),
                                  ],
                                )

                              ],
                            ),
                          ),


                        ],
                      ),
                    ))

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
                            text:  widget.items.price,style: TextStyle(fontSize: 17,color: Colors.red,fontWeight: FontWeight.bold),
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
      ),
    );
  }
}
