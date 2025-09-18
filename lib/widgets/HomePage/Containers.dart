import 'package:flutter/material.dart';

class StaticContainers extends StatelessWidget {
  const StaticContainers({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            height: 50, 
            width: 170, 
            decoration: BoxDecoration(
            color: Colors.blue, 
            borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/image 3.png",height: 30, width: 30,), 
                Text("FlipKart",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
              ],
            ),
          ), 
          Container(
            height: 50, 
            width: 170, 
            decoration: BoxDecoration(
            color: Color.fromARGB(255, 214, 235, 215), 
            borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/image 4.png",height: 30, width: 30,), 
                Text("Grocery",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SecondContainerss extends StatelessWidget {
  const SecondContainerss({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100, 
      width: 120,
      child: Card(
        elevation: 3,
        color: Colors.grey[100],
        child: Image.asset("assets/images/card-1.png",height: 20,),
      ),
    );
  }
}

class RecentViewContainer extends StatelessWidget {
  const RecentViewContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150, 
      width: 120,
      child: Card(
        elevation: 3,
        color: Colors.grey[100],
        child: Image.asset("assets/images/card-1.png",height: 40,),
      ),
    );
  }
}