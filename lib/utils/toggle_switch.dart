import 'package:flutter/material.dart';

class toggleswitchh extends StatefulWidget {
  const toggleswitchh({super.key});

  @override
  State<toggleswitchh> createState() => _toggleswitchhState();
}

class _toggleswitchhState extends State<toggleswitchh> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text("Brand Mall"),
          Transform.scale(
            scale: 1.5,
            child: Switch(
              value: isSwitched,
               onChanged: (value) {
                 setState(() {
                   isSwitched = value;
                 });
               },
               ),
          ),
          // Positioned(
          //     child: Text(
          //       isSwitched ? 'ON' : 'OFF',
          //       style: TextStyle(
          //         color: Colors.white,
          //         fontWeight: FontWeight.bold,
          //       ),
          //     ),
          //   ),
        ],
      ),
    );
  }
}