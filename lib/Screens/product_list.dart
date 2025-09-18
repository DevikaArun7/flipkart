import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:novox_flipkart/model/dartmodel.dart';
import 'package:video_player/video_player.dart';

class PrductList extends StatefulWidget {
  const PrductList({super.key});

  @override
  State<PrductList> createState() => _PrductListState();
}

class _PrductListState extends State<PrductList> {
 
  MovieList? product;
  Future<MovieList?> fetchProductDetails() async {
    final url = Uri.parse(
      'https://imdb236.p.rapidapi.com/api/imdb/search?type=movie&genre=Drama&rows=25&sortOrder=ASC&sortField=id',
    );

  final response = await http.get(
    url,
    headers: {
      'x-rapidapi-host': 'imdb236.p.rapidapi.com',
      'x-rapidapi-key': '866ee5d8b8msh5fb6101e4cc3600p13941bjsnfb35e300371d',
    },
  );
if (response.statusCode == 200) {
    final data = json.decode(response.body);
    print(data);
    return MovieList.fromJson(data); // 👈 adjust to match your API
  } else {
    print('❌ Failed: ${response.statusCode}');
    return null;
  }
}

  void initState()  {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Column(
      children: [
        FutureBuilder(future: fetchProductDetails(), builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (snapshot.hasData) {
            return Container(
              height: MediaQuery.of( context).size.height*0.90,
              width: double.infinity,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data?.results.length,
                itemBuilder: (context, index) {
                  final product = snapshot.data?.results[index];
                  return Column(
                    children: [
                      ClipRRect(child: Image.network(product?.primaryImage ?? "https://m.media-amazon.com/images/I/61jL2GCuKLL._AC_UF1000,1000_QL80_.jpg")),
                      SizedBox(height: 10,),
                      Text(product?.primaryTitle ?? "No Title",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: 10,),
                    Text("Description: ${product?.description}"),
                    SizedBox(height: 10,),
                    Text("averageRating: ${product?.averageRating}"),
                    SizedBox(height: 10,),
                    Text("numVotes: ${product?.numVotes}"),
                    SizedBox(height: 10,),
                    Text("releaseDate: ${product?.releaseDate}"), 
                    SizedBox(height: 20,),
                    Divider(thickness: 2,),
                    SizedBox(height: 20,),
                    Text("Additional Information", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),  
                    SizedBox(height: 10,),
                    Text("Genres: ${product?.genres.join(", ")}"),  
                    SizedBox(height: 10,),
                    Text("Countries of Origin: ${product?.countriesOfOrigin.join(", ")}"),
                    SizedBox(height: 10,),
                    Text("Production Companies: ${product?.productionCompanies.map((pc) => pc.name).
                    join(", ")}"),
                    SizedBox(height: 20,),  
                    Divider(thickness: 2,),
                    SizedBox(height: 20,),
                  ],
                );
              }),
            );
          } else {
            return Text('No data found');
          }
        }),
      
      ],
    ),);
  }
}