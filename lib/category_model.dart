import 'package:flutter/material.dart';

class CategoryModel extends StatelessWidget {
  final String image;
   CategoryModel({super.key ,required this.image});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child:Center(child:Image.network(image,fit: BoxFit.fill,),),
      ),
    );
  }
}
List<Widget>Category_images=[
 CategoryModel(image: "https://png.pngtree.com/png-clipart/20231017/original/pngtree-burger-food-png-free-download-png-image_13329458.png"),
  CategoryModel(image:"https://png.pngtree.com/png-vector/20230331/ourmid/pngtree-gourmet-pizza-cartoon-png-image_6656160.png"),
  CategoryModel(image:"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkoqZD4ESzBsRIKLV_wMA6BeEK80WFgTSY7A&s" ),
  CategoryModel(image:"https://img.lovepik.com/element/40075/9083.png_860.png" ),
  CategoryModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmRzSi9XSAPshP8mRHiYrkiudWih_1pnKaXA&s"),
  CategoryModel(image: "https://png.pngtree.com/png-clipart/20230914/ourmid/pngtree-sausage-cheese-pizza-slice-three-dimensional-3d-gourmet-food-fast-food-png-image_10116852.png"),
  CategoryModel(image: "https://images.rawpixel.com/image_png_800/cHJpdmF0ZS9sci9pbWFnZXMvd2Vic2l0ZS8yMDIzLTA4L3Jhd3BpeGVsb2ZmaWNlMV9hX2dyYXBoaWNfZWxlbWVudF9vZl9hX2dvbGRlbl9zaG90X29mX2p1c3RfYV9zaV81YzNjMTg3MS0xMTEwLTQzMDQtODgzOC1kMDRjMTY2YWZjZjkucG5n.png"),
  CategoryModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQySzU5GfoxNwwWwhjuyJKRP-MghsRlhKl6NQ&s"),
  CategoryModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUo5mGWwLOMWt0lVVtChQNAb19Y3cWPl6faA&s"),
  CategoryModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGskg0-IloKbUM0MfOveSTFayl82ZqQK94Kw&s"),
];