import 'package:contacts_pcsb/home/ui/contact_cards.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 5,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
        ],
      ),
      drawer: Drawer(),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(vertical: 20),
        itemCount: 7, // Number of ContactCards widgets
        itemBuilder: (context, index) {
          // ignore: prefer_const_constructors
          return Padding(
            padding: const EdgeInsets.only(bottom: 10), // Adjust spacing here
            child: ContactCards(),
          );
        },
      ),
    );
  }
}
