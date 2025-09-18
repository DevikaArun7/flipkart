import 'package:flutter/material.dart';
import 'package:novox_flipkart/Screens/product_list.dart ';
class CircleAvatarr extends StatelessWidget {
  final String text;
  // final image;
  const CircleAvatarr({super.key,
  required this.text,
  // required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => Navigator.push(context,MaterialPageRoute(builder: (context) => PrductList())),
          child: CircleAvatar(
            radius: 25,
            backgroundColor: Colors.grey.shade300, 
            backgroundImage: AssetImage("assets/images/image 4.png"),
          ),
        ),
        SizedBox(height: 10,),
        Text(text)
      ],
    );
  }
}