// made by kiro Saleh
import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);
  State<Loginpage> createState() => _loginpagestate();
}

class _loginpagestate extends State<Loginpage> {
  var emailcontroller = TextEditingController();
  var passwordcontroller = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Center(

          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Icon(
                Icons.emoji_transportation_outlined,
                size: 100,
              ),
              SizedBox(height: 75),
              // hello
              Text(
                'Welcome to CARPOOL APP',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 36,
                ),
              ),
              SizedBox(height: 10),
              Text(
                'We\'re so happy you\'re here',
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 19,
                ),
              ),

              SizedBox(height: 50),
              //email
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                          controller: emailcontroller,
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border:
                                InputBorder.none, //remove line from email border
                            hintText: 'Email',
                            prefixIcon: Icon(Icons.email),
                          )),
                    ),
                  )),
              SizedBox(height: 20), //gap
              //password
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      border: Border.all(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: TextField(
                          controller: passwordcontroller,
                          obscureText: true,
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              prefixIcon: Icon(Icons.password))),
                    ),
                  )),

              SizedBox(height: 30),
              //buttom
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  child: MaterialButton(
                      onPressed: () {
                        print(emailcontroller.text);
                        print(passwordcontroller.text);
                      },
                      child: Center(
                          child: Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ))),
                ),
              )
            ]),
          ),
        ));
  }
}
