import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {

  String user;



  ChatScreen({super.key, required this.user});



  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessageComposer(){
    return Row(
      children: [
        IconButton(onPressed: (){}, icon: const Icon(Icons.attach_file)),
        Expanded(child: TextField(
         textCapitalization: TextCapitalization.sentences,
         onChanged:(value){},
         decoration: const InputDecoration.collapsed(
           hintText: "Send a message"
         ),

       )),
        IconButton(onPressed: (){}, icon: const Icon(Icons.send))
      ],
    );

  }





  _buildMessage(String message ,bool isMe){

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
      margin: isMe ? const EdgeInsets.only(top: 8.0,bottom: 8.0,left:80.0) : const EdgeInsets.only(top: 8.0,bottom: 8.0,right:80.0),
      color: Colors.white,
      child: Text(message),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(title: Text(widget.user),
        backgroundColor: Colors.blue,
        elevation: 0.0,
        actions: [
          IconButton(onPressed: (){

          }, icon: const Icon(Icons.search))
        ],
      ),
      body: GestureDetector(
        onTap: ()=>FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(35.0),
                    topLeft: Radius.circular(35.0),
                  )
                ),
                child: ListView.builder(
                  reverse: true,
                  itemCount: 30,
                  itemBuilder: (BuildContext context, int index) {
                    return _buildMessage("Hi Man",true);
                  },),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),

    );
  }
}

