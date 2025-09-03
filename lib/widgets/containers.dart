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
                Image.asset("assets/image 3.png",height: 30, width: 30,), 
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
                Image.asset("assets/image 4.png",height: 30, width: 30,), 
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
        child: Image.asset("assets/card-1.png"),
      ),
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
        child: Image.asset("assets/card-1.png")
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

class AccountContainer extends StatelessWidget {
  // final Icons;
  // final String text;
  const AccountContainer({super.key,
    // required this.Icons,
    // required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 45, 
                      width: 150, 
                      color: Colors.grey[200],
                      child: Row(
                        children: [
                          SizedBox(width: 10,),
                          Icon(Icons.rectangle), 
                          SizedBox(width: 10,),
                          Text("text")
                        ],
                      ),
                  ),
                );
  }
}

