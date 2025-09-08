import 'package:flutter/material.dart';
import 'package:novox_flipkart/widgets/Circle.dart';
import 'package:novox_flipkart/widgets/bottom_navigationbar.dart';

class Categoriess extends StatefulWidget {
  const Categoriess({super.key});

  @override
  State<Categoriess> createState() => _CategoriessState();
}

class _CategoriessState extends State<Categoriess> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text("All Categories"),
        actions: const [
           Row(children: [
            Icon(Icons.search), 
            SizedBox(width: 8,),
            Icon(Icons.mic)
          ],)
        ],
      ),
      body: SingleChildScrollView(
        child: const Column(
          children: [
            CircleContainers(),
            // Text("data"),
            CircleContainers(),
            CircleContainers(),
            CircleContainers(),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("More on Flipkart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Divider(thickness: 3 ,color:Colors.black,)
              ],
            ),
            CircleContainers(),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavBarPage(),
    );
  }
}