import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:novox_flipkart/widgets/Circle.dart';
import 'package:novox_flipkart/widgets/bottom_navigationbar.dart';
import 'package:novox_flipkart/widgets/containers.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(20.0),
            child: Align(alignment: Alignment.topLeft,child:Text("Notification",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          ),
          Row(
            children: [
              SizedBox(width: 20),
              MyContainer(text: "All",),
              SizedBox(width: 7,),
              MyContainer(text: "Offers",),
            ],
          ),
          Divider(thickness: 1.5,),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Align(alignment:Alignment.topLeft,child: Text("   Your Coins ane Expiring!",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                SizedBox(height: 7,),
                Align(alignment:Alignment.topLeft,child: Text("   Use Them to Grab All Your Favourite\n   Products & \n   Available Extra Discounts on Sale Prices..",style: TextStyle(color: Color.fromARGB(255, 105, 104, 104)),)),
                SizedBox(height: 13,),
                Align(alignment:Alignment.topLeft,child: Text("   2 days ago",style: TextStyle(color: Color.fromARGB(255, 174, 171, 171)),)),
                Divider(thickness: 1.5,),
                Align(alignment:Alignment.topLeft,child: Text("   Your Coins ane Expiring!",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)),
                SizedBox(height: 7,),
                Align(alignment:Alignment.topLeft,child: Text("   Use Them to Grab All Your Favourite\n   Products & \n   Available Extra Discounts on Sale Prices..",style: TextStyle(color: Color.fromARGB(255, 105, 104, 104)),)),
                SizedBox(height: 13,),
                Align(alignment:Alignment.topLeft,child: Text("   2 days ago",style: TextStyle(color: Color.fromARGB(255, 174, 171, 171)),)),
                Divider(thickness: 1.5,),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavBarPage(),
    );
  }
}