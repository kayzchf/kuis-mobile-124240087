import 'package:flutter/material.dart';
import 'package:kuis_124240087/screens/data.dart';

class DetailScreen extends StatefulWidget {
  final Shoe shoeCatalog;
  const DetailScreen({super.key, required this.shoeCatalog});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    int jumlah = 0;

    return Scaffold(
      //int jumlah = 0,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(widget.shoeCatalog.shoeName),
      ),

      body: ListView(
        //crossAxisAlignment: CrossAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start, //rata kiri
        children: [
          Image.asset(widget.shoeCatalog.image),
          Image.network(widget.shoeCatalog.image),
          // AspectRatio(
          //   aspectRatio: 1/1, //biar ukuran dari internet sama semua 1:1
          //   child: Image.network(shoeCatalog.image),
          //   // Image.network(
          //   //   shoeCatalog.image,
          //   //   fit: BoxFit.cover, //biar kepotong full ratio
          //   // )
          // ),
      
          SizedBox(height: 25),
      
          Text(
            widget.shoeCatalog.shoeName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
      
          Text(widget.shoeCatalog.category, style: TextStyle(fontSize: 16)),
      
          SizedBox(height: 10),
      
          Text(
            "${widget.shoeCatalog.price}",
            style: TextStyle(
              fontSize: 22,
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
      
          SizedBox(height: 20),
      
          // Row(
          //   children: [
          //     Text(
          //       "Jumlah Produk",
          //       style: TextStyle(fontWeight: FontWeight.bold),
          //     ),
      
          //     GestureDetector(
          //       onTap: () {
          //         Icon(Icons.plus_one_outlined);
          //         jumlah++;
          //       },
          //     ),
          //     Text("$jumlah"),
          //     GestureDetector(
          //       onTap: () {
          //         Icon(Icons.favorite);
          //         jumlah--;
          //       },
          //     ),
          //     //SizedBox(width: MediaQuery.of(context).size.width)
          //   ],
          // ),
      
          Row(
            spacing: 5,
            children: [
              Icon(Icons.favorite),
              Text("${widget.shoeCatalog.likes} likes"),
              Text("Stok: ${widget.shoeCatalog.stock}"),
            ],
          ),
      
          Text(
            "Deskripsi:",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
      
          Text(widget.shoeCatalog.description, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
