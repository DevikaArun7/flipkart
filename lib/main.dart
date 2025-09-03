import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:novox_flipkart/Screens/Account.dart';
import 'package:novox_flipkart/Screens/Cart.dart';
import 'package:novox_flipkart/Screens/CartItem.dart';
import 'package:novox_flipkart/Screens/Categories.dart';
import 'package:novox_flipkart/Screens/Notifications.dart';
import 'package:novox_flipkart/Screens/homepage.dart';
import 'package:novox_flipkart/widgets/bottom_navigationbar.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:BottomNavBarPage()
    );
  }
}