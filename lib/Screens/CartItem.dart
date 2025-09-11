import 'package:flutter/material.dart';
import 'package:novox_flipkart/widgets/Cart/CartContainers.dart';
import 'package:novox_flipkart/widgets/Cart/CartText.dart';
import 'package:novox_flipkart/widgets/Cart/SecContainer.dart';

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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
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
    SingleChildScrollView(
      child: Column(
        children: [
           SizedBox(height: 6,),
          Row(
            children: [
              const Text("   Delivery to:Tharun...,624723",style: TextStyle(fontWeight: FontWeight.bold),),
              const SizedBox(width: 10,),
              Container(
                height: 25,
                width: 80, 
                decoration: BoxDecoration(
                color: const Color.fromARGB(255, 228, 227, 227),
                borderRadius: BorderRadius.circular(13),
                ),
                child: const Center(child: Text("HOME",)),
                ),
            ],
          ),
          Row(
            children: [
              const Text("   54B, New Gandhi puram Fifth cross...",style: TextStyle(color: Colors.grey),),const SizedBox(width: 40,),
              ElevatedButton(onPressed: (){}, child: const Text("Change",style: TextStyle(color: Color.fromRGBO(33, 150, 243, 1)),),style: ElevatedButton.styleFrom(backgroundColor: Colors.white),),
            ],
          ),
          const Divider(thickness: 1.5,),
          const MyCartStatic(),
          const SizedBox(height: 8,),
          const MyCartFirst(),
          const SizedBox(height: 20,),
          const Row(
            children: [
              Text("    Delivery by Tommorrow ,Wed"),
              VerticalDivider(thickness: 1,color:Colors.black,),
              Text("  FREE Delivery",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
            ],
          ),
          const Divider(),
          const MyCartText(),
          const Divider(),
          const MyCartSecContainer(),
          Container(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Align(alignment:Alignment.topLeft,child: Text("Suggested for you",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)),
              ),           
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(alignment:Alignment.topLeft,child: Text("Based on Your Activity",style: TextStyle(color: Colors.grey[500]),)),
              ),
              const SizedBox(height: 10,),
              const Row(
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
    ),
  //  Container(height: 100, 
  //   width: 100, 
  //   color: Colors.amber,
  //   )
  ],
),
  ),
); }}