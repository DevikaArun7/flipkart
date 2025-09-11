import 'package:flutter/material.dart';
import 'package:novox_flipkart/utils/toggle_switch.dart';
import 'package:novox_flipkart/widgets/HomePage/CircleAvatar.dart';
import 'package:novox_flipkart/widgets/HomePage/Containers.dart';
import 'package:novox_flipkart/widgets/HomePage/Searchbar.dart';
import 'package:novox_flipkart/widgets/HomePage/slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const StaticContainers(), 
            // const SizedBox(height: 10,),
             Row(
              children: [
                toggleswitchh(),
                SizedBox(width: 8,),
                Container(
                  width: screenWidth*0.74,
                  child: SearchBarr(), 
                ),
              ],
            ),
            // Image.asset("assets/locker.png"), 
            SliderPage(),
            const SizedBox(height: 10,), 
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(width: 15,),
                  CircleAvatarr(text: "EMI",),
                  SizedBox(width: 15,),
                  CircleAvatarr(text: "Group Buy",),
                  SizedBox(width: 15,),
                  CircleAvatarr(text: "FireDrops",),
                  SizedBox(width: 15,),
                  CircleAvatarr(text: "camera",),
                  SizedBox(width: 15,),
                  CircleAvatarr(text: "Seller",),
                  SizedBox(width: 15,),
                  
                ],
              ), 
              ),
              // SizedBox(height: 10,),
               Padding(
                padding: EdgeInsets.all(13.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SecondContainerss(),
                      SecondContainerss(),
                      SecondContainerss(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(alignment:Alignment.topLeft,child:Text("Recent Viewed Srores",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),)),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SecondContainerss(),
                    SecondContainerss(),
                    SecondContainerss(),
                  ],
                ),
              ),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomNavBarPage(),
      
    );
  }
}