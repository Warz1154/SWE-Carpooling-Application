import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'tetstt.dart';
import 'create_ride.dart';
import 'rating_report.dart';

List<User> users = [];

class LoginScreen extends StatelessWidget {
  var emailContoller = TextEditingController();
  var passController = TextEditingController();

  late String email;
  late String password;

  late int flag = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        leading: Icon(Icons.menu),
        title: Text('Carpooling App'),
        actions: [
          IconButton(
            onPressed: onNotication, icon: Icon(
            Icons.notification_important,
          ),
          ),
          IconButton(onPressed: onSearch, icon: Icon(
            Icons.search,
          )
          ),
        ],

        centerTitle: true,
        elevation: 9.0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 90.0
            ),
            Text(
              'Login',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurpleAccent,

              ),
            ),
            SizedBox(
              height: 40.0
            ),
            TextFormField(
              controller: emailContoller,
              keyboardType: TextInputType.emailAddress, //Adds @ to the keyboard
                onFieldSubmitted: (String value)
                {
                  email = value;
                },
              decoration: InputDecoration(
                labelText: 'Email Adress',
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email,
                ),


              )
            ),
            SizedBox(
                height: 15.0
            ),
            TextFormField(
              controller: passController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,//Adds @ to the keyboard
                onFieldSubmitted: (String value)
                {
                    password = value;
                },
                onChanged: (String value)
                {
                  print(value);
                },
                decoration: InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.lock,
                  ),
                  suffixIcon: Icon(
                    Icons.remove_red_eye
                  )


                )
            ),
            SizedBox(
                height: 20.0
            ),
            Container(
              width: double.infinity,
              child: MaterialButton(
                  onPressed: ()
                {
                    for(var u in users){
                      if( u.password == passController.text && u.email == emailContoller.text){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)
                            {
                              flag = 1;
                              return createride();

                            }
                            ));
                      }
                    }
                    if(flag == 0){
                      print("wrong password");
                    }

                  //Event upon login
                },
                  color: Colors.deepPurpleAccent,
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    color: Colors.white
                  )
                )
              ),
            ),
            SizedBox(
                height: 11.0
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account ?',

                ),
                TextButton(
                    onPressed: ()
                    {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context)
                      {

                        return Loginpage();

                      }
                      ));
                    },
                    child: Text(
                      'Register Now!'
                    )),
                SizedBox(
                    height: 20.0
                ),


              ],
            ),
            TextButton(
                onPressed: ()
                {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)
                      {

                        return Loginpagee();

                      }
                      ));
                },
                child: Text(
                    'New page (for now)'
                )),
          ],
        ),
      )
    );
  }

  // When notification icon is clicked
  void onNotication(){
    print('notfication clicked');
  }
  void onSearch(){
    print('Search clicked');
  }
}


