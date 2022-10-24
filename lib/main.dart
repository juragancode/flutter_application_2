import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

// stateless -> tampilan static -> Tidak terjadi perubahan state
// statefull -> tampilan dynamic -> Berubah - ubah

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int nilai = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dialog"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => AlertDialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                title: Text("Peringatan"),
                content: Text("Konten ini merusak!"),
                actions: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Batal"),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text("Lanjut"),
                  ),
                ],
              ),
            );
          },
          child: Text("Show Dialog"),
        ),
      ),
    );
  }
}
