import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

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
        title: Text("SnackBar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(
                  "Apakah anda ingin melanjutkan unduhan!",
                ),
                action: SnackBarAction(
                  label: "Batal",
                  onPressed: () {
                    print("Eh Kamu GOBLOG!");
                  },
                ),
              ),
            );
          },
          child: Text("Show Snackbar"),
        ),
      ),
    );
  }
}
