import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';

import 'new_items_model.dart';
class CartScreenModel extends StatefulWidget {
  final String image;
  final String title;
  final String sub_title;
  final String price;
  final String Rating;

  CartScreenModel(
      {super.key, required this.title, required this.sub_title, required this.price, required this.Rating, required this.image});
  @override
  State<CartScreenModel> createState() => _CartScreenModel();

}
class _CartScreenModel extends State<CartScreenModel>{
  @override
  Widget build(BuildContext context){
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


                    Text("\$${widget.price}",style: TextStyle(color: Colors.red,fontSize: 13,fontWeight: FontWeight.bold),),

                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: Column(

                  children: [
                    Container(
                      height: 75,
                      width: 25,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        children: [
                          InkWell(
                            onTap:(){},
                            child: Container(
                              height:15,
                                width: MediaQuery.of(context).size.width,
                                child: Icon(Icons.add,size: 14,),),
                          ),
                          Divider(
                            color: Colors.white,
                          ),
                          Container(
                              height:12,
                              width: MediaQuery.of(context).size.width,
                              child: Center(child: Text("3",style: TextStyle(color: Colors.black,fontSize: 10),))),
                          Divider(
                            color: Colors.white,
                          ),
                          InkWell(
                            onTap: (){},
                            child: Container( height:15,
                                width: MediaQuery.of(context).size.width,
                                child:Icon(Icons.remove,size: 14,)),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),

            ],
          ),)
    );
  }
}
List<Widget>Cart_Item_data=[
  CartScreenModel(image: "https://png.pngtree.com/png-clipart/20231017/original/pngtree-burger-food-png-free-download-png-image_13329458.png", title: "Burger", sub_title:"Test your hot burger", price: "100", Rating: '4',),
  CartScreenModel(image: "https://png.pngtree.com/png-vector/20230331/ourmid/pngtree-gourmet-pizza-cartoon-png-image_6656160.png", title: "Pizza", sub_title: "  Delicious cheese pizza", price: "150", Rating: '3',),
  CartScreenModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzLTZ2NEMPl1UKl5PALQc4fcwqVTEDkj-ecg&s", title: "Sushi", sub_title: "Fresh sushi rolls", price: "200", Rating: '4',),

];