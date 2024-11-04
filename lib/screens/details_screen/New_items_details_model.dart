import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:clippy_flutter/arc.dart';

// Food item model
class NewItemsModel {
  final String image;
  final String title;
  final String sub_title;
  final String price;
  final String Rating;

  const NewItemsModel({
    required this.image,
    required this.title,
    required this.sub_title,
    required this.price,
    required this.Rating,
  });
}

// Sample data for food items
List<NewItemsModel> New_Item_data = [
  NewItemsModel(image: "https://png.pngtree.com/png-clipart/20231017/original/pngtree-burger-food-png-free-download-png-image_13329458.png", title: "Burger", sub_title: "Test your hot burger", price: "100", Rating: '4'),
  NewItemsModel(image: "https://png.pngtree.com/png-vector/20230331/ourmid/pngtree-gourmet-pizza-cartoon-png-image_6656160.png", title: "Pizza", sub_title: "Delicious cheese pizza", price: "150", Rating: '3'),
  NewItemsModel(image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzLTZ2NEMPl1UKl5PALQc4fcwqVTEDkj-ecg&s", title: "Sushi", sub_title: "Fresh sushi rolls", price: "200", Rating: '4'),
  NewItemsModel(image: "https://www.onceuponachef.com/images/2023/08/Beef-Tacos.jpg", title: "Tacos", sub_title: "Spicy beef tacos", price: "120", Rating: '4'),
  // Add more items as needed
];

// Main widget for single item details
class SingleItemWidget extends StatelessWidget {
  final NewItemsModel item;

  const SingleItemWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(item.title),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.red),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Image.network(item.image, height: 300, fit: BoxFit.cover),
                ),
                Arc(
                  edge:Edge.TOP,
                  arcType: ArcType.CONVEY,
                  height: 30,
                  child: Container(
                    color: Colors.grey[200],
                    width: double.infinity,
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              PannableRatingBar(
                                rate: double.parse(item.Rating),
                                items: List.generate(5, (index) => const RatingWidget(
                                  selectedColor: Colors.yellow,
                                  unSelectedColor: Colors.grey,
                                  child: Icon(Icons.star, size: 27),
                                )),
                                onChanged: (value) {
                                  // Handle rating change if needed
                                },
                              ),
                              Text("\$${item.price}", style: TextStyle(color: Colors.red, fontSize: 17, fontWeight: FontWeight.bold)),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          child: Text(item.sub_title, style: TextStyle(fontSize: 15, color: Colors.black)),
                        ),
                        Divider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Delivery Time", style: TextStyle(color: Colors.black, fontSize: 15, fontStyle: FontStyle.italic)),
                              Row(
                                children: [
                                  Icon(Icons.punch_clock, color: Colors.red),
                                  SizedBox(width: 5),
                                  Text("30 Minutes", style: TextStyle(color: Colors.black, fontSize: 15, fontStyle: FontStyle.italic)),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.white,
              boxShadow: [
                BoxShadow(color: Colors.grey.withOpacity(0.3), spreadRadius: 1, blurRadius: 10, offset: Offset(0, 3)),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: RichText(
                      text: TextSpan(
                        text: "Total ",
                        style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(text: "\$${item.price}", style: TextStyle(fontSize: 17, color: Colors.red, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(9.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Order", style: TextStyle(color: Colors.white, fontSize: 20)),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.red, minimumSize: Size(60, 200)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Sample main function to test
void main() {
  runApp(MaterialApp(
    home: FoodListScreen(),
  ));
}

// Screen to display list of food items
class FoodListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Food List")),
      body: ListView.builder(
        itemCount: New_Item_data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.network(New_Item_data[index].image, width: 50, fit: BoxFit.cover),
            title: Text(New_Item_data[index].title),
            subtitle: Text("\$${New_Item_data[index].price}"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SingleItemWidget(item: New_Item_data[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
