import 'package:flutter/material.dart';

class Elevatedbutttonn extends StatelessWidget {
  final String text;
  const Elevatedbutttonn({super.key,
  required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: (){},
      child: Text(text,style:TextStyle(color: Colors.black)),
    style:ElevatedButton.styleFrom(backgroundColor:Colors.white,
    side: BorderSide(),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),),
    );
  }
}