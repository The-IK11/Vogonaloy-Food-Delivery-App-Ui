
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vogonaloy_food_delivery_app/screens/home_page.dart';

class NotificationScreen extends StatelessWidget {
  final List<NotificationItem> notifications = [
    NotificationItem(
      title: "Your order has been placed!",
      subtitle: "Just now",
      icon: Icons.shopping_cart,
    ),
    NotificationItem(
      title: "Your order is on the way!",
      subtitle: "15 minutes ago",
      icon: Icons.local_shipping,
    ),
    NotificationItem(
      title: "Your delivery is arriving soon!",
      subtitle: "30 minutes ago",
      icon: Icons.access_time,
    ),
    NotificationItem(
      title: "You have a new promo code: SAVE10",
      subtitle: "1 hour ago",
      icon: Icons.local_offer,
    ),
    NotificationItem(
      title: "Your order has been delivered!",
      subtitle: "2 hours ago",
      icon: Icons.check_circle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.to(()=>Home_Page());
        }, icon: Icon(Icons.arrow_back)),
        title: Text('Notifications',style: TextStyle(color: Colors.red,fontSize: 25,fontWeight:FontWeight.bold),),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.red[50], // Light background color
        child: ListView.separated(
          itemCount: notifications.length,
          separatorBuilder: (context, index) => Divider(),
          itemBuilder: (context, index) {
            final notification = notifications[index];
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
              child: Card(
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.red,
                    child: Icon(notification.icon, color: Colors.white),
                  ),
                  title: Text(
                    notification.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Text(
                    notification.subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.grey,
                  ),
                  onTap: () {
                    // Handle notification tap
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Tapped on: ${notification.title}')),
                    );
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

class NotificationItem {
  final String title;
  final String subtitle;
  final IconData icon;

  NotificationItem({
    required this.title,
    required this.subtitle,
    required this.icon,
  });
}