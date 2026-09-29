import 'package:flutter/material.dart';
import 'package:latkuis_124240087/screens/login.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( //const disini buat apa ya lupa
      home: LoginScreen(),
    );
  }
}
