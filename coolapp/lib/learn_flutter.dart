import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: (){
          Navigator.of(context).pop();  //flutter needs the context to know what is working from behind
        }, icon: const Icon(Icons.arrow_back_ios_sharp)),
      ),
      body: Column(
        children: [
          Image.asset('images/kafka.jpg')
        ],
      ),
    );
  }
}
