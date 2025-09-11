

import 'package:flutter/material.dart';

class CircleContainers extends StatelessWidget {
  final String text;
  const CircleContainers({super.key,
  required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
            height: 120,
            child: ListView.builder(
              itemCount: 4, 
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
              return Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(width: 15,),
        Container(
            height: 85,
            width: 90,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
          ),
                  child: ClipOval(
                      child: Image.asset(
                         "assets/images/image 28.png",
                          fit: BoxFit.cover, 
              ),
          ),
        ),
        Text(text)
      ],
    );
            },
            ),
            
          );
  }
}