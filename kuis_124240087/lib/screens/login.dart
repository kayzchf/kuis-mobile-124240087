import 'package:flutter/material.dart';

import '../root.dart' show Root;
import 'data.dart';

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
  
    if(username == account.username && password == account.password){
      _isLoggedIn = true;
      Navigator.pushReplacement( //ketika login, tampilan ke replace
        context, MaterialPageRoute(builder: (context) => Root(
          username: account.username,
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
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: SingleChildScrollView( //biar bisa scroll kalo page gacukup
          child: Padding(
            padding: EdgeInsets.all(20), //jarak sama di semua sisi
            child: Column(
              spacing: 10, //atur spacing untuk semua yg ada di dalem column drpd kebanyakan sizedbox
              children: [
                // if (!_isLoggedIn) ... [
                //   Image.network(
                //     "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9Q8Ls4f_a0MIqSmz9Zj_GHOB7GvBslkNbESYWMzd9mw&s=10",
                //     ),

                  Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9Q8Ls4f_a0MIqSmz9Zj_GHOB7GvBslkNbESYWMzd9mw&s=10"),
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
                      hintText: "password",
                      border: OutlineInputBorder()
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75, //atur ukuran berdasarkan lebar device
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue
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

                ]
              //],
            ),
          ),
        ),
      ),
    );
  }
}
