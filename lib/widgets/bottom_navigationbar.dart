import 'package:flutter/material.dart';
import 'package:novox_flipkart/Screens/Account.dart';
import 'package:novox_flipkart/Screens/Cart.dart';
import 'package:novox_flipkart/Screens/Categories.dart';
import 'package:novox_flipkart/Screens/Notifications.dart';
import 'package:novox_flipkart/Screens/homepage.dart';

class BottomNavBarPage extends StatefulWidget {
  const BottomNavBarPage({super.key});

  @override
  State<BottomNavBarPage> createState() => _BottomNavBarPageState();
}

class _BottomNavBarPageState extends State<BottomNavBarPage> {
  int indexNum = 0;
  List tabWisgets = [
    HomePage(),
    Categoriess(),
    NotificationPage(), 
    AccountPage(), 
    MyCart(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
      selectedItemColor: Colors.blue, 
      unselectedItemColor: Colors.grey[600],
      showUnselectedLabels: true,
      // selectedFontSize: 10,
      currentIndex: indexNum,
      onTap: (int index) {
        setState(() {
          indexNum = index;
        });
      },
      items:const [
     BottomNavigationBarItem(
      icon: Icon(Icons.home), 
    label: "Home",
     backgroundColor: Colors.white
    ),
     BottomNavigationBarItem(
      icon: Icon(Icons.category), 
    label: "Categories",
    ),
     BottomNavigationBarItem(
      icon: Icon(Icons.notifications), 
    label: "Notifications",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person_pin), 
    label: "Account",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.trolley), 
    label: "Cart",
    ),
    ],
    ),
    body: tabWisgets[indexNum],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:novox_flipkart/Screens/Account.dart';
// import 'package:novox_flipkart/Screens/Cart.dart';
// import 'package:novox_flipkart/Screens/Categories.dart';
// import 'package:novox_flipkart/Screens/Notifications.dart';
// import 'package:novox_flipkart/Screens/homepage.dart';

// class BottomNavBarPage extends StatefulWidget {
//   const BottomNavBarPage({super.key});

//   @override
//   State<BottomNavBarPage> createState() => _BottomNavBarPageState();
// }

// class _BottomNavBarPageState extends State<BottomNavBarPage> {
//   int indexNum = 0;

//   final List<Widget> _pages = const [
//     HomePage(),
//     Categoriess(),
//     NotificationPage(),
//     AccountPage(),
//     MyCart(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Colors.grey,
//         currentIndex: indexNum,
//         onTap: (int index) {
//           setState(() {
//             indexNum = index;
//           });
//         },
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
//           BottomNavigationBarItem(icon: Icon(Icons.category), label: "Categories"),
//           BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "Notifications"),
//           BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: "Account"),
//           BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
//         ],
//       ),
//       body: IndexedStack(
//         index: indexNum,
//         children: _pages,
//       ),
//     );
//   }
// }

