
import 'package:flutter/material.dart';

import '../widgets/FavContacts.dart';
import 'Chats.dart';
import 'HeaderMenu.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  get rttt => null;

  get controller => null;

  get focusNode => null;

  get style => null;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        // leading: IconButton(
        //   icon: const Icon(Icons.menu),
        //   color: Colors.black,
        //   iconSize: 30.0,
        //   onPressed: () {  },
        // ),
        backgroundColor: Colors.blue,
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
        title: Text(widget.title),
      ),
     drawer: const Drawer(
child: SafeArea(
  child:   Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text("data",style: TextStyle(fontSize: 24.0),)

    ],
  
  ),
),
      ),
      body: Column(
        children: [
          const HeaderMenu(),
          Expanded(
            child: Container(

              decoration: const BoxDecoration(color: Colors.black,

              borderRadius:  BorderRadius.only(topLeft: Radius.circular(30.0),topRight: Radius.circular(30.0))),
              child: const Column(
                children: [
                  FavContacts(),
                 Chats()
                            ],
              ),

            ),
            
          )
        ],
      )
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Increment',
      //   child: const Icon(Icons.add),
      // ),
    );
  }
}
