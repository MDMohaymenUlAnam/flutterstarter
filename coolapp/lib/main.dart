import 'package:coolapp/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //here the const keyword has to used to solve the warning, so that flutter is happy and wont show errors
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.purple),
      home: const RootPage(),
    ); //widget then argument home, then again widget scaffold and under that another widget. This is the flow of flutter archi. This part basically displays white screen
  }
}

class RootPage extends StatefulWidget {
  //when user clicks on the screen and it changes something, we need this stateful widget. Kinda like setstate of React
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter'),
      ),
      body: const HomePage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('Floating action button is pressed');
        },
        child: const Icon(Icons.home),
      ),
      bottomNavigationBar: NavigationBar(destinations: const [
        NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
        NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
      ],
      onDestinationSelected: (int index){
        setState(() {
          currentPage = index;
        });
      },
      selectedIndex: currentPage,
      ),   
      
    );
  }
}
