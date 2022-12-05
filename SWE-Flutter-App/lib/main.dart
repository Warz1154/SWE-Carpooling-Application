import 'package:flutter/material.dart';
import 'package:udemy_flutter_test/login_screen.dart';

//app manager
void main()
{
  runApp(MyApp());

}

// Staterless
// Statefull

// class MyApp

class MyApp extends StatelessWidget
{

  //Constructor
  //Build

  @override
  Widget build(BuildContext context) {
    //Widget Manager
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }

}

