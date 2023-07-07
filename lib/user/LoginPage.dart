import 'package:aibee/user/MyHomePage.dart';
import 'package:flutter/material.dart';

import 'Dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  get formKey => null;

  get mobileController => null;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          color: Colors.black,
          iconSize: 30.0,
          onPressed: () {  },
        ),
        backgroundColor: Colors.lightBlue,
        title: const Text("Beno's"),
        actions: [

          IconButton(
            icon: const Icon(Icons.notifications),
            color: Colors.black,
            iconSize: 30.0,
            onPressed: () {  },
          ),
          IconButton(
            icon: const Icon(Icons.search),
            color: Colors.black,
            iconSize: 30.0,
            onPressed: () {  },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0,right: 20.0,top: 150.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                decoration: const InputDecoration(
                  hintText: "Enter Mobile Number"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
              decoration: const InputDecoration(
                hintText: "Enter Password",
              ),
              ),
            ),
            ElevatedButton(onPressed: onPressed(),
                child: const Text("Login",

                    style: TextStyle(
                    color: Colors.blue
                ),
                ),


            )
          ],
        ),
      ),
    );
  }

  onPressed() {

  }


}



