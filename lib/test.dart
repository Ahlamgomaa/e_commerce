import 'package:flutter/material.dart';


class Test extends  StatefulWidget{
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("test"),
        centerTitle: true,
      ),
      body:Container(
        padding: EdgeInsets.all(20),
        child: ListView(
        children: [
    
        ],
      ),) ,
      
    );
  }
}