import 'package:flutter/material.dart';
import '../models/data.dart';

class DetailScreen extends StatelessWidget {
  final Menu menu;
  const DetailScreen({super.key, required this.menu});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(209, 15, 133, 100),
        title: Text(
          menu.name,
          style: TextStyle(
            color: Colors.white
          ),
        ),
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.start, //mepet atas
        children: [
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, //rata kiri
              children: [
                AspectRatio( 
                  aspectRatio: 1/1, //biar ukuran dari internet sama semua 1:1
                  child: Image.network(
                    menu.image,
                    fit: BoxFit.cover, //biar kepotong full ratio
                  )
                ),

                SizedBox(height: 25),
                
                Text(
                  menu.name,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text(
                  menu.category,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 10),

                Text(
                  "Rp${menu.price}",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.green,
                    fontWeight: FontWeight.bold
                  ),
                ),

                SizedBox(height: 20),

                Text(
                  "Deskripsi:",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold
                  )
                ),

                Text(
                  menu.description,
                  style: TextStyle(
                    fontSize: 16
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}