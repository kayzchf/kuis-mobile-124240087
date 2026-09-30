import 'package:flutter/material.dart';
import 'package:latkuis_124240087/screens/login.dart';

class ProfileScreen extends StatelessWidget {
  final String username; //harus dselalu diidentifikasi buat ambil username
  const ProfileScreen({
    super.key,
    required this.username //wajib diidentifikasi jg
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 8,
        children: [
          CircleAvatar(
            radius: 40,
            child: Icon(
              Icons.person,
              size: 45,
            ),
          ),
      
          SizedBox(height: 10),

          Text(
            "Username",
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey
            ),
          ),
      
          Text(
            username,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
      
          SizedBox(height: 5),
      
          ElevatedButton(
            onPressed: (){
              Navigator.pushAndRemoveUntil(
                context, 
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ), 
                (route) => false
              );
            }, 
            child: Text("Logout"),
          )
        ],
      ),
    );
  }
}