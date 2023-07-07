import 'package:aibee/user/MyHomePage.dart';
import 'package:aibee/user/LoginPage.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AI Bee',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.black),
        useMaterial3: true,
        // primaryColor: Colors.red
      ),
      home: const MyHomePage(title: "BackSpace"),
      debugShowCheckedModeBanner: false,
    );
  }
}
