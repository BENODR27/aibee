import 'package:flutter/material.dart';
class FavContacts extends StatefulWidget {
  const FavContacts({Key? key}) : super(key: key);

  @override
  State<FavContacts> createState() => _FavContactsState();
}

class _FavContactsState extends State<FavContacts> {
  final List<String> favContacts = ["priya","Vaishu","malu","ameen","abiram","aakash","gokul","akshay"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Favorite Contacts",style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0
              ),),
              IconButton(onPressed: (){

              }, icon:const Icon(Icons.more_horiz)),
            ],

          ),

        ),
        SizedBox(
          height: 120.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: favContacts.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    const CircleAvatar(
                        radius: 35.0,
                        // backgroundColor: Colors.red,
                        backgroundImage: AssetImage('assets/images/contact.png')
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(favContacts[index],
                      style: const TextStyle(
                          color: Colors.blue
                      ),)
                  ],
                ),
              );

            },


          ),
        )

      ],

    );
  }
}
