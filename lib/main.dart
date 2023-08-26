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
      body: ListView.separated(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 10),
        itemCount: 7, // Number of ContactCards widgets
        separatorBuilder: (context, index) =>
            SizedBox(height: 20), // Adjust the height as needed
        itemBuilder: (context, index) {
          return ContactCards();
        },
      ),
    );
  }
}
