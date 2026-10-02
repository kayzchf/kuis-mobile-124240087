import 'package:flutter/material.dart';

import 'screens/home.dart';
import 'screens/profile.dart';

class Root extends StatefulWidget {
  final String username;

  const Root({
    super.key,
    required this.username
  });

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0; //index default yaitu index 0

  late final List<Widget> screens; //nilainya nanti, karena username blm ada
  List<String> tittleScreens = ["Home", "Profile"];

  @override
  void initState(){ //dijalankan ketika rootstate dibuat
    super.initState();
    screens = [
      HomeScreen(),
      ProfileScreen(username: widget.username) //baru nangkep usernamenya
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text(
          tittleScreens[_selectedIndex],
          style: TextStyle(color: Colors.white),
        ), //nampilin nama sesuai index
        backgroundColor: Colors.grey
      ),

      body: screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        }, 
        
        items: [ //wajib ada item krn minimal 2
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home"
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile"
          )
        ],
      ),
    );
  }
}