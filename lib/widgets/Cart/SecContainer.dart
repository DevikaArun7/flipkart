

import 'package:flutter/material.dart';

class MyCartSecContainer extends StatelessWidget {
  const MyCartSecContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 300, 
      color: Color.fromARGB(255, 225, 235, 243),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.save_outlined,color: Colors.grey[500],),
                SizedBox(width: 20,),
                Text("Extended Warranty Plan by ...",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(width: 90,),
                Icon(Icons.arrow_drop_up_outlined,size: 40,),
              ],
            ),
          ),
          Container(
            height: 200, 
            width: 370,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 100, 
                      height: 80,
                      child: Image.asset("assets/images/image 51.png",),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text("Extended Warranty for",style: TextStyle(fontWeight: FontWeight.bold),),
                            Align(alignment:Alignment.topLeft,child:Text("Headph",style: TextStyle(fontWeight: FontWeight.bold),)),
                          ],
                        ),
                      ),
                  ],
                ),
                Align(alignment:Alignment.topLeft,child: Text("        51% off",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),)),
                SizedBox(height: 10,),
                Text("Get Full Warranty Coverage and protection against"),
                Text("damages.Add Extended Warranty to make your      "),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("    499",style: TextStyle(fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(width: 180,),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}