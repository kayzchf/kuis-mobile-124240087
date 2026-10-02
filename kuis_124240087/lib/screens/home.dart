import 'package:flutter/material.dart';
import 'package:kuis_124240087/screens/data.dart';
import 'package:kuis_124240087/screens/detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: shoeCatalog.length,
      itemBuilder: (context, index) {
        return ListTile(
              onTap: () {
                Navigator.push(
                  context, 
                  MaterialPageRoute(
                    builder: (context) => DetailScreen(shoeCatalog: shoeCatalog[index])
                  ),
                );
              },
              leading: AspectRatio(
                aspectRatio: 1/1,
                child: Image.network(shoeCatalog[index].image, fit: BoxFit.cover),
              ),
              title: Text(shoeCatalog[index].shoeName),
              subtitle: Text("${shoeCatalog[index].price}\nstok: ${shoeCatalog[index].stock} Likes: ${shoeCatalog[index].likes}"),
              trailing: Icon(Icons.arrow_forward_ios),
            );
  
        // return ListTile(
        //   onTap: () {
        //     Navigator.push(
        //       context, MaterialPageRoute(
        //         builder: (context) => DetailScreen(shoeCatalog: shoeCatalog[index]),
        //       ),
        //     );
        //   },
        //   title: Text(shoeCatalog[index].shoeName),
        //   subtitle: Text("Rp${menu[index].price}"),
        //   leading: AspectRatio(
        //     aspectRatio: 1/1,
        //     child: Image.network(menu[index].image, fit: BoxFit.cover),
        //   ),

        // );
      }
    );
  }
}