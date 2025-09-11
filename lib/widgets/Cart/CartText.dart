import 'package:flutter/material.dart';

class MyCartText extends StatelessWidget {
  const MyCartText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(Icons.delete_outline_rounded,color: Colors.grey[600],), 
        TextButton(onPressed: (){}, child: Text("Remove",style: TextStyle(color: Colors.grey[600]),),),
        // Text("Remove",style: TextStyle(color: Colors.grey[600]),),
        VerticalDivider(color: Colors.blue),
        Icon(Icons.save_alt_sharp,color: Colors.grey[600],), 
        TextButton(onPressed: (){}, child: Text("Save for later",style: TextStyle(color: Colors.grey[600]),),),
        // Text("Save for later",style: TextStyle(color: Colors.grey[600]),),
        VerticalDivider(),
        Icon(Icons.arrow_circle_down_sharp,color: Colors.grey[600],), 
        TextButton(onPressed: (){}, child: Text("Buy this now",style: TextStyle(color: Colors.grey[600]),),),
        // Text("Buy this now",style: TextStyle(color: Colors.grey[600]),),
      ],
    );
  }
}