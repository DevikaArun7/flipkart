import 'package:flutter/material.dart';

class SearchBarr extends StatefulWidget {
  const SearchBarr({super.key});

  @override
  State<SearchBarr> createState() => _SearchBarrState();
}

class _SearchBarrState extends State<SearchBarr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45, 
      width: 220, 
      color: Colors.grey.shade200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.search,color: Colors.grey),
          Text("Search for products",style: TextStyle(color: Colors.grey),),
          SizedBox(width: 7,),
          Icon(Icons.mic,color: Colors.grey),
          Icon(Icons.camera_alt,color: Colors.grey),
        ],
      ),
    );
  }
}