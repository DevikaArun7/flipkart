import 'package:flutter/material.dart';

class CircleContainers extends StatelessWidget {
  final String text;

  const CircleContainers({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Circle container
              Container(
                height: 85,
                width: 85,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[300],
                ),
                child: Align(
                  alignment: Alignment.centerLeft, // ⬅️ Image on the left side
                  child: SizedBox(
                    width: 70,
                    height: 30,
                    child: Image.asset(
                      "assets/images/image 28.png",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              Text(text),
            ],
          );
        },
      ),
    );
  }
}
