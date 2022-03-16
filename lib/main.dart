import 'package:flutter/material.dart';

import 'body_style.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: ' UI Film Store Design '),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage ({required this.title, Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text(title), centerTitle: true,toolbarHeight: 40,backgroundColor: Colors.blue,foregroundColor: Colors.white,),
      body: BodyStyle(),
    );
  }
}