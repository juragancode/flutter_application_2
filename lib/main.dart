import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("TextField"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
            ],
          ),
        ));
  }
}
