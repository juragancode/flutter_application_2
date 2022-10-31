import 'package:flutter/material.dart';
// import 'package:flutter_application_2/pages/product.dart';
import './product.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductPage(),
              ),
            );
          },
          child: Text("Next->"),
        ),
      ),
    );
  }
}
