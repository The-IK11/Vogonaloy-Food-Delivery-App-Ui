import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

class NewItemsModel extends StatefulWidget {
  final String image;
  final String title;
  final String sub_title;
  final String price;
   final String Rating;
  const NewItemsModel({super.key, required this.image, required this.title, required this.sub_title, required this.price,required this.Rating});

  @override
  State<NewItemsModel> createState() => _NewItemsModelState();
}

class _NewItemsModelState extends State<NewItemsModel> {
  @override
  Widget build(BuildContext context) {
    double rating=double.parse(widget.Rating);
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Image.network(widget.image,height: 120,width: 140,),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    Text(widget.title,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold,),),

                    Text(widget.sub_title,style: TextStyle(fontSize: 14,color: Colors.grey),),

                    PannableRatingBar(
                      rate:rating,
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
                          rating = value;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 5.0),
                      child: ElevatedButton(onPressed: (){}, child:Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Icon(Icons.add_shopping_cart,color: Colors.white,),
                          ),
                          Text("Add to Cart",style:TextStyle(fontSize: 17,color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      ),style: ElevatedButton.styleFrom(backgroundColor: Colors.red), ),
                    )

                  ],
                ),
              ),

             Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("\$${widget.price}",style: TextStyle(color: Colors.red,fontSize: 16,fontWeight: FontWeight.bold),),
                      Icon(Icons.favorite_outline,color: Colors.red,)
                    ],
                  ),
                ),

            ],
          ),)
    );
  }
}
List<NewItemsModel>New_Item_data1=[
  NewItemsModel(image: "https://png.pngtree.com/png-clipart/20231017/original/pngtree-burger-food-png-free-download-png-image_13329458.png", title: "Burger", sub_title:"Test your hot burger", price: "100", Rating: '4',),
 NewItemsModel(image: "https://png.pngtree.com/png-vector/20230331/ourmid/pngtree-gourmet-pizza-cartoon-png-image_6656160.png", title: "Pizza", sub_title: "  Delicious cheese pizza", price: "150", Rating: '3',),
  NewItemsModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzLTZ2NEMPl1UKl5PALQc4fcwqVTEDkj-ecg&s", title: "Sushi", sub_title: "Fresh sushi rolls", price: "200", Rating: '4',),
  NewItemsModel(image: "https://www.onceuponachef.com/images/2023/08/Beef-Tacos.jpg", title: "Tacos", sub_title: "Spicy beef tacos", price: "120", Rating: '4',),
  NewItemsModel(image: "https://static.vecteezy.com/system/resources/thumbnails/046/437/566/small_2x/mix-salad-transparent-background-png.png", title: "Salad", sub_title: "Healthy green salad", price: "90", Rating: '5',),
  NewItemsModel(image: "https://static.vecteezy.com/system/resources/thumbnails/027/144/753/small/penne-pasta-with-tomato-sauce-parmesan-cheese-and-basil-on-transparent-background-png.png", title: "Pasta", sub_title: "Creamy Alfredo pasta", price: "180", Rating: '4',),
  NewItemsModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2pdMAoF6UzV5-OB6Jpl0Xj2r8bpiGF9I6Hw&s", title: "Sandwich", sub_title: "Fresh deli sandwich", price: "110", Rating: '5',),
  NewItemsModel(image: "https://static.vecteezy.com/system/resources/previews/024/108/126/non_2x/tasty-colorful-ice-cream-cup-with-syrups-and-fruits-on-transparent-background-png.png", title: "Ice Cream", sub_title: "Cool ice cream scoop", price: "80", Rating: '5',),
  NewItemsModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSaBw58kd6GT93J4VS3XP1U6X-4wmgCumWD5Q&s", title: "Steak", sub_title: "Juicy grilled steak", price: "250", Rating: '4',),
  NewItemsModel(image: "https://png.pngtree.com/png-vector/20240130/ourmid/pngtree-cupcake-png-with-ai-generated-png-image_11571382.png", title: "Cupcake", sub_title: "Sweet cupcake treat", price: "60", Rating: '3',),
  NewItemsModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_wKNfr80IZETh1TwbRhqXljBKGPretkdTHg&s", title: "Ramen", sub_title: " A warm hug in a bowl.", price: "70", Rating: '4',),
  NewItemsModel(image: "https://img.lovepik.com/element/40075/9083.png_860.png", title: "French Frys", sub_title:"the crispy, golden delights ."
    , price: "100", Rating: '4',),
];
