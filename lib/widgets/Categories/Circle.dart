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
      child: ListView.separated(separatorBuilder: (context, index) {
        return 
        SizedBox(width: 10,);
        
      },
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
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 70,
                    height: 30,
                    child:
                    // NetworkImage("")
                     Image.asset(
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

// import 'package:flutter/material.dart';

// class CategoryCircle extends StatelessWidget {
//   const CategoryCircle({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 5, 
//         crossAxisSpacing: 10, 
//         mainAxisSpacing: 10, 
//         childAspectRatio: 1,
//         ),
//          itemBuilder: (context, index) {
//            return Container(
//             decoration: BoxDecoration(color: Colors.blue),
//            );
//          },);
//   }
// }