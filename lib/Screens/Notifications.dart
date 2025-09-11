import 'package:flutter/material.dart';
import 'package:novox_flipkart/widgets/Notification/ElevatedButton.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return  Scaffold(
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Align(alignment: Alignment.topLeft,child:Text("Notification (3)",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
          ),
          const Row(
            children: [
              SizedBox(width: 20),
              Elevatedbutttonn(text: "All"),
              SizedBox(width: 7,),
              Elevatedbutttonn(text: "Offers")
            ],
          ),
          const Divider(thickness: 1.5,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const Align(alignment:Alignment.topLeft,
                child: Row(
                  children: [
                    Icon(Icons.radio_button_checked,size: 14,),
                    Text(" Your Coins ane Expiring!",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                )),
                // const SizedBox(height: 7,),
                Align(alignment:Alignment.topLeft,child: Row(
                  children: [
                    const Text("    Use Them to Grab All Your Favourite\n    Products & \n    Available Extra Discounts on Sale Prices..",style: TextStyle(color: Color.fromARGB(255, 105, 104, 104)),),
                     SizedBox(width:screenWidth*0.12,),
                    Image.asset("assets/images/image 3.png")
                  ],
                )),
                const SizedBox(height: 13,),
                const Align(alignment:Alignment.topLeft,child: Text("    2 days ago",style: TextStyle(color: Color.fromARGB(255, 174, 171, 171)),)),
                const Divider(thickness: 1.5,),
                const Align(alignment:Alignment.topLeft,child: Row(
                  children: [
                    Icon(Icons.radio_button_checked,size: 14,),
                    Text(" Your Coins ane Expiring!",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                  ],
                )),
                // const SizedBox(height: 7,),
                Align(alignment:Alignment.topLeft,child: Row(
                  children: [
                    const Text("     Use Them to Grab All Your Favourite\n     Products & \n    Available Extra Discounts on Sale Prices..",style: TextStyle(color: Color.fromARGB(255, 105, 104, 104)),),
                     SizedBox(width:screenWidth*0.12,),
                    Image.asset("assets/image 3.png")
                  ],
                )),
                const SizedBox(height: 13,),
                const Align(alignment:Alignment.topLeft,child: Text("   2 days ago",style: TextStyle(color: Color.fromARGB(255, 174, 171, 171)),)),
                const Divider(thickness: 1.5,),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: BottomNavBarPage(),
    );
  }
}