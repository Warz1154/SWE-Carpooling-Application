import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';

class LoginScreen extends StatelessWidget {
  var emailContoller = TextEditingController();
  var passController = TextEditingController();



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
                height: 40.0
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
                  print(value);
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
                  print(value);
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
                    print(emailContoller.text);
                    print(passController.text);

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
                    ))
              ],
            )
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
