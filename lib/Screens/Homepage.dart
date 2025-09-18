import 'package:flutter/material.dart';
import 'package:novox_flipkart/utils/toggle_switch.dart';
import 'package:novox_flipkart/widgets/HomePage/CircleAvatar.dart';
import 'package:novox_flipkart/widgets/HomePage/Containers.dart';
import 'package:novox_flipkart/widgets/HomePage/Searchbar.dart';
import 'package:novox_flipkart/widgets/HomePage/slider.dart';
import 'package:novox_flipkart/model/dartmodel.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Future<AmazonProducts?> fetchProductDetails() async {
  final url = Uri.parse(
    'https://real-time-amazon-data.p.rapidapi.com/product-details?asin=B07ZPKBL9V&country=US',
  );

  final response = await http.get(
    url,
    headers: {
      'x-rapidapi-host': 'real-time-amazon-data.p.rapidapi.com',
      'x-rapidapi-key': 'fa1e134807msh7db3c185f348abbp166e6cjsn96c33a712066',
    },
  );
if (response.statusCode == 200) {
    final data = json.decode(response.body);
    print(data);
    return AmazonProducts.fromJson(data['data']); // 👈 adjust to match your API
  } else {
    print('❌ Failed: ${response.statusCode}');
    return null;
  }
}
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchProductDetails();
  }
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
                    RecentViewContainer(),
                    RecentViewContainer(),
                    RecentViewContainer(),
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