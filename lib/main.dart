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
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // const HomePage({Key? key}) : super(key: key);
  final List data = [
    {"judul": "Pilihan ke - 1", "data": 1},
    {"judul": "Pilihan ke - 2", "data": 2},
    {"judul": "Pilihan ke - 3", "data": 3},
    {"judul": "Pilihan ke - 4", "data": 4},
    {"judul": "Pilihan ke - 6", "data": 6},
    {"judul": "Pilihan ke - 7", "data": 7},
    {"judul": "Pilihan ke - 8", "data": 8},
  ];

  late int dataAwal;

  @override
  void initState() {
    dataAwal = data[0]["data"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("DropDown"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: DropdownButton<int>(
            value: dataAwal,
            items: data
                .map(
                  (e) => DropdownMenuItem(
                    child: Text("${e['judul']}"),
                    value: e['data'] as int,
                  ),
                )
                .toList(),
            onChanged: (value) {
              setState(() {
                dataAwal = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
