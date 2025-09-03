
import 'package:flutter/material.dart';
import 'package:novox_flipkart/widgets/bottom_navigationbar.dart';
import 'package:novox_flipkart/widgets/containers.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});
  @override
  State<MyCart> createState() => _MyCartState();
}
class _MyCartState extends State<MyCart> {
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
          Tab(text: "Flipkart",), // just a String
          Tab(text: "Grocery"),
        ],
      ),
    ),
    body:TabBarView(
  children: [
    Column(
      children: [
        Container( 
          height: 320, 
          width: double.infinity, 
          color: Colors.grey[200],
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 35),
                child: Icon(Icons.trolley,color: Colors.grey,size: 150,),
              ),
              Text("Your cart is empty!",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text("Shop now"),style:ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 24, 112, 185), 
                minimumSize: Size(150, 35)
              ),)
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text("Suggested for you",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
              SizedBox(height: 8,),
              Text("Based on Your Activity",style: TextStyle(color: Colors.grey[500]),),
              SizedBox(height: 10,),
              Row(
                children: [
                  CartContainers(),
                  CartContainers(),
                  CartContainers(),
                ],
              )
            ],
          ),
        ),
      ],
    ),
  ],
),
bottomNavigationBar: BottomNavBarPage(),
  ),
);
  }
}