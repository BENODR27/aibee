import 'package:aibee/user/ChatScreen.dart';
import 'package:flutter/material.dart';

class Chats extends StatefulWidget {
  const Chats({Key? key}) : super(key: key);

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: ClipRRect(
        borderRadius:const BorderRadius.only(
       topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0),
        ),

        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white
          ),
          child: ListView.builder(
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) => ChatScreen(user: "Elon Musk",)));
                },
                child: Container(
                  margin: const EdgeInsets.only(bottom: 2.0),
                  decoration: const BoxDecoration(
                      color: Colors.black
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 35.0,
                              backgroundImage: AssetImage('assets/images/contact.png'),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Elon Musk",
                                  style: TextStyle(
                                    color: Colors.blue
                                  ),),
                                  SizedBox(

                                    height: 5.0,
                                  ),
                                  Text("Hi Beno How Are You",
                                    style: TextStyle(
                                        color: Colors.blue
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text("07.07 am",
                            style: TextStyle(color: Colors.blue),),
                            SizedBox(

                              height: 5.0,
                            ),
                            Text("NEW",
                              style: TextStyle(color: Colors.blue),)
                          ],
                        )
                      ],

                    ),
                  ),
                ),
              );
            },

          ),
        ),
      ),
    );
  }
}
