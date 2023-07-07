import 'package:flutter/material.dart';
class HeaderMenu extends StatefulWidget {
  const HeaderMenu({Key? key}) : super(key: key);

  @override
  State<HeaderMenu> createState() => _HeaderMenuState();
}

class _HeaderMenuState extends State<HeaderMenu> {
  int selectedIndex=0;
  final List<String> headerItems=["Chats","Status","Reels","Shorts"];
  @override
  Widget build(BuildContext context) {
    return  Container(
       height: 90.0,
       color: Colors.blue,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: headerItems.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: (){
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 40.0,vertical: 20.0
              ),
              child: Text(headerItems[index],
              style: TextStyle(
                color: index == selectedIndex ? Colors.white : Colors.black,
                fontSize: 20.0
              ),),

            ),
          );
        },

      ),
     );
  }
}
