import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  final myItems = [
    Image.asset("assets/images/locker.png"),
    Image.asset("assets/images/locker.png"),
    Image.asset("assets/images/locker.png"),
  ];

  int myCurrentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          CarouselSlider(
          options: CarouselOptions(
            autoPlay: true, 
            height: 200,
            onPageChanged: (index, reason) {
              setState(() {
                myCurrentIndex = index;
              });
            },
          ),
          items: myItems,
          )
        ],
      ),
    );
  }
}