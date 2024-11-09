import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/main.dart';

class About extends StatelessWidget {
  late String name;
  About({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${name}"),
      ),
      body: ElevatedButton(onPressed: () {
        Navigator.pop(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      ); }, child: Text("back"),),
    );
  }
}


