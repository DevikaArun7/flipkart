
import 'package:flutter/material.dart';
import 'package:novox_flipkart/widgets/RowWidget.dart';
import 'package:novox_flipkart/widgets/bottom_navigationbar.dart';
import 'package:novox_flipkart/widgets/containers.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Column(
          children:  [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 17,vertical: 15),
              child: Align(alignment:Alignment.topLeft,child: Text("Hey! Tharun",style: TextStyle(fontWeight: FontWeight.bold,fontSize:18),)),
            ), 
           const Row(
             children: [
               AccountContainer( ),
               AccountContainer( ),
             ],
           ),
            const Row(
             children: [
               AccountContainer( ),
               AccountContainer( ),
             ],
           ),
           const SizedBox(height: 7,),
           const Divider(thickness: 8,),
           Row(
             children: [
              const SizedBox(width: 10,),
              const Icon(Icons.receipt),
              const SizedBox(width: 10,),
               const Column(
                 children: [
                   Text("Add/Verify your Email"),
                   Text("Get latest updates of your orders"),
                 ],
               ),
               const SizedBox(width: 60,),
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
                 Icon(Icons.payment),
                 const SizedBox(width: 18,),
                 Column(children: [
                  Text("Flipkart Pay Later"),
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
           const AccountRow(text: "Flipkart Plus",width:210,),
           const SizedBox(height: 10,),
           const AccountRow(text: "Flipkart Plus",width:210,),
           const SizedBox(height: 10,),
           const AccountRow(text: "Flipkart Plus",width:210,),
           const SizedBox(height: 10,),
           const AccountRow(text: "Flipkart Plus",width:210,),
           const SizedBox(height: 10,),
           const AccountRow(text: "Flipkart Plus",width:210,),
           const SizedBox(height: 10,),
           const AccountRow(text: "Flipkart Plus",width:210,),
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
        bottomNavigationBar: const BottomNavBarPage(),
      ),
    );
  }
}