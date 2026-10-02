import 'package:flutter/material.dart';
import 'package:latkuis_124240087/models/data.dart';
import 'package:latkuis_124240087/screens/detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: menu.length,
      itemBuilder: (context, index) {
        return ListTile(
          onTap: () {
            Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => DetailScreen(menu: menu[index]),
              ),
            );
          },
          title: Text(menu[index].name),
          subtitle: Text("Rp${menu[index].price}"),
          leading: AspectRatio(
            aspectRatio: 1/1,
            child: Image.network(menu[index].image, fit: BoxFit.cover),
          ),
          //leading: Image.network(menu[index].image),
          trailing: Icon(Icons.arrow_forward_ios),
        );
      }
    );
  }
}