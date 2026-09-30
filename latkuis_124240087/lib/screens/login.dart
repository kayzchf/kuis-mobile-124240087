import 'package:flutter/material.dart';
import 'package:latkuis_124240087/models/data.dart';
import 'package:latkuis_124240087/root.dart';

class LoginScreen extends StatefulWidget { //tampilan punya data berubah selama apk jalan
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final _usernameController = TextEditingController(); //underscore artinya private
  final _passwordController = TextEditingController();
  bool _isLoggedIn = false;

  void _login({required String username, required String password}) {
    final user = users.where( //cek username ke data.dart
      (user) => 
        user.username == username &&
        user.password == password,
    ).toList(); //ngirim 2 parameter

    if(user.isNotEmpty){
      final loggedInUsername = user[0].username; //cocokin index username

      Navigator.pushReplacement( //ketika login, tampilan ke replace
        context, MaterialPageRoute(builder: (context) => Root(
          username: loggedInUsername,
        )) //materialPageRoute = halaman tujuan
      );

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.green, content: Text("Login Berhasil!"),
      ));

    } else {
      setState(() {
        _isLoggedIn = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red, content: Text("Username atau Password Salah!"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Text(
          "Login Screen",
          style: TextStyle( //kalo mau style text wajib ini
            color: Colors.white
          ),
        ),
        backgroundColor: const Color.fromRGBO(209, 15, 133, 100),
      ),
      body: Center(
        child: SingleChildScrollView( //biar bisa scroll kalo page gacukup
          child: Padding(
            padding: EdgeInsets.all(20), //jarak sama di semua sisi
            child: Column(
              spacing: 10, //atur spacing untuk semua yg ada di dalem column drpd kebanyakan sizedbox
              children: [
                if (!_isLoggedIn) ... [
                  Image.asset(
                    "assets/GacoanLogo.webp",
                    width: 200,
                    ),

                  TextField(
                    controller: _usernameController,
                    decoration: InputDecoration(
                      hintText: "username",
                      border: OutlineInputBorder()
                    ),
                  ),
                  TextField(
                    controller: _passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "******",
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75, //atur ukuran berdasarkan lebar device
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromRGBO(0, 175, 219, 100)
                      ),
                      onPressed: () {
                        _login(
                          username: _usernameController.text, 
                          password: _passwordController.text
                        );
                      },
                      child: Text("Login")
                    ),
                  ),

                  Text("Username = kayneza || Password = 1720")
                ]
              ],
            ),
          ),
        ),
      ),
    );
  }
}