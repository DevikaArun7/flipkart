
import 'package:flutter/material.dart';
import 'package:novox_flipkart/widgets/bottom_navigationbar.dart';
import 'package:novox_flipkart/widgets/containers.dart';

class CartItem extends StatefulWidget {
  const CartItem({super.key});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
  length: 2,
  child: Scaffold(
    appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      title: const Text('My Cart',style: TextStyle(color: Colors.black),),
      bottom: const TabBar(
        labelColor: Colors.blue,          // selected tab text color
        unselectedLabelColor: Colors.black,
        labelStyle: TextStyle(fontSize: 18),
        tabs: [
          Tab(text: "Flipkart (1)",), // just a String
          Tab(text: "Grocery"),
        ],
      ),
    ),
    body:TabBarView(
  children: [
    Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              Text("Delivery to:Tharun...,624723",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Container(
                height: 25,
                width: 80, 
                decoration: BoxDecoration(
                color: Color.fromARGB(255, 228, 227, 227),
                borderRadius: BorderRadius.circular(13),
                ),
                child: Center(child: Text("HOME",)),
                ),
            ],
          ),
        ),
        Row(
          children: [
            Text("   54B, New Gandhi puram Fifth cross...",style: TextStyle(color: Colors.grey),),
          ],
        ),
        SizedBox(height: 7,),
        Divider(thickness: 1.5,),
      ],
    ),
  ],
),
bottomNavigationBar: BottomNavBarPage(),
  ),
);
  }
}