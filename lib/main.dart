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

class Items extends StatelessWidget{
  List list;
  Items({required this.list});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: list == null?0:list.length,
        itemBuilder: (ctx,i){
          return ListTile(
            title: Text(list[i]['name']),
            subtitle: Text(list[i]['mobile']),
            onTap: (){},
          );
        }
    );
  }

}

