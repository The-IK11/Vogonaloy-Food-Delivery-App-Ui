import 'package:clippy_flutter/arc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

import '../widgets_screens/new_items_model.dart';
import 'home_page.dart';

class SingleItmesWidget extends StatefulWidget {
  final NewItemsModel items;
  const SingleItmesWidget({super.key, required this.items});


  @override
  State<SingleItmesWidget> createState() => _SingleItmesWidgetState();
}

class _SingleItmesWidgetState extends State<SingleItmesWidget> {

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
                              Text("\$${widget.items.price}",style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
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
class NewItemsModel {
  final String image;
  final String title;
  final String description;
  final String price;
  final String Rating;
  const NewItemsModel({
    required this.image,
    required this.title,
    required this.description,
    required this.price,
    required this.Rating,
  });
}

List<NewItemsModel> New_Item_data = [
  NewItemsModel(
    image: "https://png.pngtree.com/png-clipart/20231017/original/pngtree-burger-food-png-free-download-png-image_13329458.png",
    title: "Burger",
    description: "A juicy burger with fresh ingredients, topped with lettuce, tomatoes, and your choice of sauces for a delicious bite.",
    price: "100",
    Rating: '4',
  ),
  NewItemsModel(
    image: "https://png.pngtree.com/png-vector/20230331/ourmid/pngtree-gourmet-pizza-cartoon-png-image_6656160.png",
    title: "Pizza",
    description: "Delicious cheese pizza topped with fresh mozzarella, tangy tomato sauce, and a sprinkle of oregano.",
    price: "150",
    Rating: '3',
  ),
  NewItemsModel(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzLTZ2NEMPl1UKl5PALQc4fcwqVTEDkj-ecg&s",
    title: "Sushi",
    description: "Fresh sushi rolls made with high-quality fish, rice, and vegetables, served with soy sauce and wasabi.",
    price: "200",
    Rating: '4',
  ),
  NewItemsModel(
    image: "https://www.onceuponachef.com/images/2023/08/Beef-Tacos.jpg",
    title: "Tacos",
    description: "Spicy beef tacos wrapped in soft corn tortillas, topped with fresh salsa, cilantro, and lime.",
    price: "120",
    Rating: '4',
  ),
  NewItemsModel(
    image: "https://static.vecteezy.com/system/resources/thumbnails/046/437/566/small_2x/mix-salad-transparent-background-png.png",
    title: "Salad",
    description: "A healthy green salad with a mix of fresh vegetables, topped with a light vinaigrette dressing.",
    price: "90",
    Rating: '5',
  ),
  NewItemsModel(
    image: "https://static.vecteezy.com/system/resources/thumbnails/027/144/753/small/penne-pasta-with-tomato-sauce-parmesan-cheese-and-basil-on-transparent-background-png.png",
    title: "Pasta",
    description: "Creamy Alfredo pasta served with a rich sauce and garnished with fresh parsley and Parmesan cheese.",
    price: "180",
    Rating: '4',
  ),
  NewItemsModel(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2pdMAoF6UzV5-OB6Jpl0Xj2r8bpiGF9I6Hw&s",
    title: "Sandwich",
    description: "Fresh deli sandwich stacked with meats, cheeses, and crisp vegetables, served on artisan bread.",
    price: "110",
    Rating: '5',
  ),
  NewItemsModel(
    image: "https://static.vecteezy.com/system/resources/previews/024/108/126/non_2x/tasty-colorful-ice-cream-cup-with-syrups-and-fruits-on-transparent-background-png.png",
    title: "Ice Cream",
    description: "Cool ice cream scoop available in various flavors, topped with syrups and sprinkles for a sweet treat.",
    price: "80",
    Rating: '5',
  ),
  NewItemsModel(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaBw58kd6GT93J4VS3XP1U6X-4wmgCumWD5Q&s",
    title: "Steak",
    description: "Juicy grilled steak cooked to perfection, seasoned with herbs, and served with a side of roasted vegetables.",
    price: "250",
    Rating: '4',
  ),
  NewItemsModel(
    image: "https://png.pngtree.com/png-vector/20240130/ourmid/pngtree-cupcake-png-with-ai-generated-png-image_11571382.png",
    title: "Cupcake",
    description: "Sweet cupcake treat topped with creamy frosting and colorful sprinkles, perfect for any celebration.",
    price: "60",
    Rating: '3',
  ),
  NewItemsModel(
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_wKNfr80IZETh1TwbRhqXljBKGPretkdTHg&s",
    title: "Ramen",
    description: "A warm hug in a bowl, featuring savory broth, fresh noodles, and a variety of toppings like eggs and vegetables.",
    price: "70",
    Rating: '4',
  ),
  NewItemsModel(
    image: "https://img.lovepik.com/element/40075/9083.png_860.png",
    title: "French Fries",
    description: "The crispy, golden delights, perfectly seasoned and served with your choice of dipping sauce.",
    price: "100",
    Rating: '4',
  ),
];