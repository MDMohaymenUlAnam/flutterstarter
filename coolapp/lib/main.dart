import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp( //here the const keyword has to used to solve the warning, so that flutter is happy
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple
      ),
      home: const RootPage(),
    ); //widget then argument home, then again widget scaffold and under that another widget. This is the flow of flutter archi. This part basically displays white screen
  
  }
}

class RootPage extends StatefulWidget { //when user clicks on the screen and it changes something, we need this stateful widget. Kinda like setstate of React
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
    );
  }
}