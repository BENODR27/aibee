import 'package:flutter/material.dart';
class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return const Center(
     child: Column(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
         Text("hfdfg")
       ],
     ),
    );
  }
}
