import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  const MyCircle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 6,),
        Container(
          height: 85, 
          width: 90, 
          decoration: BoxDecoration(
            shape: BoxShape.circle, 
            color: Colors.grey[300], 
            
          ),
          child: Image.asset("assets/card-1.png",)
        ),
      ],
    );
  }
}

class CircleContainers extends StatelessWidget {
  // final String text;
  const CircleContainers({super.key,
  // required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 120,
            child: ListView.builder(
              itemCount: 4, 
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
              return const MyCircle(
              );
            },
            ),
            
          );
  }
}