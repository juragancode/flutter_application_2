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

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int index;
  List showWidget = [
    Center(
      child: Text(
        "Home",
        style: TextStyle(
          fontSize: 90,
          color: Colors.red.shade900,
        ),
      ),
    ),
    Center(
      child: Text(
        "Scan",
        style: TextStyle(
          fontSize: 90,
          color: Colors.red.shade900,
        ),
      ),
    ),
    Center(
      child: Text(
        "Profile",
        style: TextStyle(
          fontSize: 90,
          color: Colors.red.shade900,
        ),
      ),
    )
  ];

  @override
  void initState() {
    index = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Bottom Navigation Bar"),
      ),
      body: showWidget[index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.red.shade900,
        unselectedItemColor: Colors.white,
        currentIndex: index,
        onTap: (value) {
          setState(() {
            index = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.qr_code),
            icon: Icon(Icons.qr_code_2),
            label: "Scan",
          ),
          BottomNavigationBarItem(
            // icon: Icon(Icons.account_circle),
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
