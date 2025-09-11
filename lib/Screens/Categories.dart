import 'package:flutter/material.dart';
import 'package:novox_flipkart/widgets/Categories/Circle.dart';

class Categoriess extends StatefulWidget {
  const Categoriess({super.key});
  @override
  State<Categoriess> createState() => _CategoriessState();
}
class _CategoriessState extends State<Categoriess> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title:  const Text("All Categories"),
        actions:  [
           Row(children: [
            Icon(Icons.search), 
            SizedBox(width: 8,),
            Icon(Icons.mic),
            SizedBox(width: screenWidth*0.03),
          ],)
        ],
      ),
      body: const SingleChildScrollView(
        child:  Column(
          children: [
            CircleContainers(text: "data",),
            Divider(),
            CircleContainers(text: "data",),
            Divider(),
            CircleContainers(text: "data",),
            Divider(),
            CircleContainers(text: "data",),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("More on Flipkart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              
                Divider(
                  // thickness: 20,color:Colors.black,height: 20
                  )
              ],
            ),
            CircleContainers(text: "data",),
          ],
        ),
      ),
    );
  }
}