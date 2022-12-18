import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'login_page.dart';

class Home extends StatefulWidget {

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Future<List<User>> getData() async{
    //var data = await http.get(Uri.parse("http://localhost:7882/dashboard/myfolder/getdata.php"));
    //var jsonData = json.decode(data.body);

    List<User> users = [];

    //for(var u in jsonData)
    //{
      User user = User("aloo@gmail.com", 'ota123');

      users.add(user); //add the user objects to users list
      print("ota");
    //}
    print("ota");
    print(users.length);
    return users;
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("My App Bar"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Icon(Icons.add),
        ),
        body: Container(
            child: FutureBuilder(
                future: getData(),
                builder: (BuildContext context, AsyncSnapshot snapshot){
                  if(snapshot.data == null)
                  {
                    return Container(
                        child: const Center(
                            child: Text("Loading...")
                        )
                    );
                  }
                  else{
                    return ListView.builder(
                      itemCount: snapshot.data.length,
                      itemBuilder: (BuildContext context, int index){
                        return ListTile(
                          title: Text(snapshot.data[index].email),
                        );
                      },
                    );
                  }

                }
            )
        )
    );
  }
}