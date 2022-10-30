import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(20),
              width: double.infinity,
              height: 150,
              color: Colors.grey.shade900,
              child: Text(
                "Dashboard",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  ListTile(
                    onTap: () {
                      print("Move to Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Office");
                    },
                    leading: Icon(Icons.home_work_outlined),
                    title: Text("Office"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Add New Shop");
                    },
                    leading: Icon(Icons.add_business),
                    title: Text("New Shop"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Office");
                    },
                    leading: Icon(Icons.home_work_outlined),
                    title: Text("Office"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Add New Shop");
                    },
                    leading: Icon(Icons.add_business),
                    title: Text("New Shop"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Office");
                    },
                    leading: Icon(Icons.home_work_outlined),
                    title: Text("Office"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Add New Shop");
                    },
                    leading: Icon(Icons.add_business),
                    title: Text("New Shop"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Office");
                    },
                    leading: Icon(Icons.home_work_outlined),
                    title: Text("Office"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Add New Shop");
                    },
                    leading: Icon(Icons.add_business),
                    title: Text("New Shop"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Office");
                    },
                    leading: Icon(Icons.home_work_outlined),
                    title: Text("Office"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Add New Shop");
                    },
                    leading: Icon(Icons.add_business),
                    title: Text("New Shop"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Office");
                    },
                    leading: Icon(Icons.home_work_outlined),
                    title: Text("Office"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Add New Shop");
                    },
                    leading: Icon(Icons.add_business),
                    title: Text("New Shop"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Home");
                    },
                    leading: Icon(Icons.home),
                    title: Text("Home"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Move to Office");
                    },
                    leading: Icon(Icons.home_work_outlined),
                    title: Text("Office"),
                  ),
                  ListTile(
                    onTap: () {
                      print("Add New Shop");
                    },
                    leading: Icon(Icons.add_business),
                    title: Text("New Shop"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
