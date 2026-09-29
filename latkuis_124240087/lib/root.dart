import 'package:flutter/material.dart';
import 'package:latkuis_124240087/screens/home.dart';
import 'package:latkuis_124240087/screens/profile.dart';

class Root extends StatefulWidget {
  const new({super.key});

  @override
  State<Root> createState() => _RootState();
}

class _RootState extends State<Root> {
  int _selectedIndex = 0; //index default yaitu index 0

  List<Widget> screens = [HomeScreen(), ProfileScreen()];
  List<String> tittleScreens = ["Home", "Profile"];

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text(
          tittleScreens[_selectedIndex],
          style: TextStyle(color: Colors.white),
        ), //nampilin nama sesuai index
        backgroundColor: const Color.fromRGBO(209, 15, 133, 100),
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