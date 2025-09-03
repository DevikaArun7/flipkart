import 'package:flutter/material.dart';

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
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.grey.shade300, 
          backgroundImage: AssetImage("assets/image 4.png"),
        ),
        SizedBox(height: 10,),
        Text(text)
      ],
    );
  }
}