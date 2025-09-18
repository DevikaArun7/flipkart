
import 'package:flutter/material.dart';

class MyCartStatic extends StatelessWidget {
  const MyCartStatic({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 20, 
            width: 70,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 6, 163, 140),
              borderRadius: BorderRadius.circular(5)
            ),
            child: Center(child: Text("BESTSELLER",style: TextStyle(fontSize: 10,color: Colors.white),)),
          ),
        ),
      ],
    );
  }
}


class MyCartFirst extends StatelessWidget {
  const MyCartFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 150, 
          width: 100, 
          child: Image.asset("assets/images/heaphone.png"),
        ),
        Row(
          children: [
            Column(
              children: [
                Text("Mi Basic Wired headset with Mic",style: TextStyle(fontWeight: FontWeight.bold),),
                SizedBox(height: 8,),
                Text("Black, In the Ear",style: TextStyle(color: Colors.grey),),
                SizedBox(height: 15,),
                Row(
                  children: [
                    Text("16% off",style: TextStyle(color: Colors.green,fontSize: 18,fontWeight: FontWeight.bold),),
                    SizedBox(width: 10,),
                    Text("₹499",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,),),
                  ],
                ),
                SizedBox(height: 8,),
                Text("    4 offeres applied * 1 offer available",style: TextStyle(color: Colors.green,fontWeight: FontWeight.bold),),
              ],
            ),
          ],
        ),
        
      ],
    );
  }
}

class CartContainers extends StatelessWidget {
  const CartContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200, 
      width: 130,
      child: Card(
        elevation: 3,
        color: Colors.grey[100],
        child: ClipRRect(
          child: Image.asset("assets/images/card-1.png",
                            fit: BoxFit.contain,height: double.infinity,width: double.infinity,))
      ),
      
    );
  }
}

class MyContainer extends StatelessWidget {
  final String text;
  const MyContainer({super.key,required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30, 
      width: 70, 
      child: Center(child: Text(text,style: TextStyle(fontWeight: FontWeight.w600),)),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(13),
      ),
    );
  }
}




