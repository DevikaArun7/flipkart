
import 'package:flutter/material.dart';
import 'package:novox_flipkart/widgets/Account/AccountContainer.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
     final screenWidth = MediaQuery.of(context).size.width;
    return  SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children:  [
               Padding(
                padding: EdgeInsets.symmetric(horizontal: 17,vertical: 15),
                child: Align(alignment:Alignment.topLeft,
                child: Row(
                  children: [
                    Text("Hey! Tharun",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),),
                    SizedBox(width: screenWidth*0.60,),
                    Icon(Icons.control_point_duplicate_sharp,color: Colors.yellow,)
                  ],
                )),
              ), 
              Row(
               children: [
                 AccountContainer(icon: Icons.gif_box,text: "Orders",),
                 AccountContainer(icon: Icons.heart_broken,text: "Wishlist",),
               ],
             ),
              const Row(
               children: [
                 AccountContainer(icon: Icons.card_travel,text: "Coupons",),
                 AccountContainer(icon: Icons.headphones_outlined,text: "Help Center",),
               ],
             ),
             const SizedBox(height: 7,),
             const Divider(thickness: 8,),
             Row(
               children: [
                const SizedBox(width: 10,),
                const Icon(Icons.receipt,color: Colors.yellow,),
                const SizedBox(width: 10,),
                 const Column(
                   children: [
                     Text("Add/Verify your Email"),
                     Text("Get latest updates of your orders"),
                   ],
                 ),
                  SizedBox(width: screenWidth*0.15),
                 ElevatedButton(onPressed: (){}, child: const Text("Update"),style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 3, 108, 194)),)
               ],
             ),
             const SizedBox(height: 7,),
             const Divider(thickness: 8,),
             const Padding(
               padding: EdgeInsets.all(10.0),
               child: Align(alignment:Alignment.topLeft,child: Text("Credit Options",style: TextStyle(fontSize: 17,fontWeight: FontWeight.w700,)),
             ),), 
             const Padding(
               padding: EdgeInsets.all(8.0),
               child: Row(
                 children: [
                   Icon(Icons.payment,color: Colors.blue,),
                   const SizedBox(width: 18,),
                   Column(children: [
                    Align(alignment:Alignment.topLeft,child:Text("Flipkart Pay Later")),
                    const SizedBox(height: 4,),
                    Text("Get 10000 worth Times Prime benifits"),
                   ],)
                 ],
               ),
             ),
             const Divider(thickness: 8,),
             const Align(alignment:Alignment.topLeft,child: Padding(
               padding: EdgeInsets.all(8.0),
               child: Text("Account Settings",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),),
             )),
              AccountRow(text: "Flipkart Plus",width:screenWidth*0.55,icon: Icons.star_border,),
             const SizedBox(height: 10,),
              AccountRow(text: "Flipkart Plus",width:screenWidth*0.55,icon: Icons.person_2_outlined,),
             const SizedBox(height: 10,),
              AccountRow(text: "Flipkart Plus",width:screenWidth*0.55,icon: Icons.card_travel,),
             const SizedBox(height: 10,),
              AccountRow(text: "Flipkart Plus",width:screenWidth*0.55,icon: Icons.location_on,),
             const SizedBox(height: 10,),
              AccountRow(text: "Flipkart Plus",width:screenWidth*0.55,icon: Icons.language_sharp,),
             const SizedBox(height: 10,),
              AccountRow(text: "Flipkart Plus",width:screenWidth*0.55,icon: Icons.notification_add_outlined,),
             const SizedBox(height: 10,),
             const Divider(thickness: 8,),
             const Row(
               children: [
                 Padding(
                   padding: EdgeInsets.all(8.0),
                   child: Text("My Activity",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17),),
                 ),
               ],
             )
            ],
          ),
        ),
      ),
    );
  }
}