import 'package:flutter/material.dart';
import 'screens/LoginScreen.dart';
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginScreen()
    );
  }


}