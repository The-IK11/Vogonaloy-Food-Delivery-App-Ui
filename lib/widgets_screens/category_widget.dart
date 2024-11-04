import 'package:flutter/material.dart';
import 'package:vogonaloy_food_delivery_app/widgets_screens/product_widget.dart';

import '../category_model.dart';

class CategoryWidget extends StatelessWidget {
        const CategoryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: Category_images.length,
          itemBuilder: (context, index) {
            return products_widgets(height: 50, width: 50,child: Category_images[index],);
          },
                ),

    );
  }
}