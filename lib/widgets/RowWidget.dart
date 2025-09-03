import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AccountRow extends StatelessWidget {
  final String text;
  final double width;
  const AccountRow({super.key,
    required this.text,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 15,), 
        Icon(Icons.one_k_plus_outlined),
        SizedBox(width: 20,), 
        Text(text), 
        SizedBox(width: width,), 
        Icon(Icons.arrow_right_outlined),
      ],
    );
  }
}