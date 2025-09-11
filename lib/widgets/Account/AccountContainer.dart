
import 'package:flutter/material.dart';

class AccountContainer extends StatelessWidget {
  final icon;
  final String text;
  const AccountContainer({super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Card(
                    child: Container(
                      height: 45, 
                        width: 150, 
                        // color: Colors.grey[200],
                        child: Row(
                          children: [
                            SizedBox(width: 10,),
                            Icon(icon,color: Colors.blue,), 
                            SizedBox(width: 10,),
                            Text(text)
                          ],
                        ),
                    ),
                  ),
                );
  }
}


class AccountRow extends StatelessWidget {
  final icon;
  final String text;
  final double width;
  const AccountRow({super.key,
    required this.text,
    required this.width,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 15,), 
        Icon(icon,color: Colors.blue,),
        SizedBox(width: 20,), 
        Text(text), 
        SizedBox(width: width,), 
        Icon(Icons.arrow_right_outlined),
      ],
    );
  }
}