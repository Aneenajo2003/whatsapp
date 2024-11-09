import 'package:flutter/material.dart';
import 'package:whatsapp/nextpage.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController namecntrl=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu),),
        title: Text("Whatsapp"),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.qr_code)),
          IconButton(onPressed: () {}, icon: Icon(Icons.settings)),

        ],
      ),
      body:

        Column(
          children: [
            TextFormField(
              controller: namecntrl,
              decoration: InputDecoration(

                              fillColor: Colors.grey[100],
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))),
                              hintText: " Message",
                              labelText: "Type here",
                              prefixIcon: Icon(Icons.emoji_emotions_rounded),
                            ),
                            validator: (String? value) {
                              if (value!.length == 0) {
                                return "Name is empty";
                              }
                              if (value.contains("@")) {
                                return "it is not a valid name";
                              }
                            },
                          ),
                          Padding(
                            padding: EdgeInsets.all(10),
                          ),




            ElevatedButton(onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => About(name: namecntrl.text,)),
              );
            }, child: Text("Ok"),),
          ],
        ),
    );
  }
  }




