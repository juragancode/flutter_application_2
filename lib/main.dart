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
        title: Text("Modal Bottom Sheet"),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(30),
          child: ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isDismissible: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  builder: (context) => SizedBox(
                    height: 400,
                    // color: Colors.black87,
                    child: ListView(
                      children: [
                        ListTile(
                          onTap: () => print("Add New"),
                          leading: Icon(Icons.add),
                          title: Text("New"),
                        ),
                        ListTile(
                          onTap: () => print("Add Photo"),
                          leading: Icon(Icons.add_a_photo_outlined),
                          title: Text("Photo"),
                        ),
                        ListTile(
                          onTap: () => print("Add Shop"),
                          leading: Icon(Icons.add_business),
                          title: Text("Shop"),
                        ),
                        ListTile(
                          onTap: () => print("Add Call"),
                          leading: Icon(Icons.add_call),
                          title: Text("Phone"),
                        ),
                        ListTile(
                          onTap: () => print("Add Link"),
                          leading: Icon(Icons.add_link),
                          title: Text("Link"),
                        ),
                        ListTile(
                          onTap: () => print("Add Chart"),
                          leading: Icon(Icons.add_shopping_cart_outlined),
                          title: Text("Chart"),
                        ),
                        ListTile(
                          onTap: () => print("Add Location"),
                          leading: Icon(Icons.add_location_alt_outlined),
                          title: Text("Location"),
                        ),
                        ListTile(
                          onTap: () => print("Add Drive"),
                          leading: Icon(Icons.add_to_drive_outlined),
                          title: Text("Drive"),
                        ),
                        ListTile(
                          onTap: () => print("Add Reaction"),
                          leading: Icon(Icons.add_reaction_outlined),
                          title: Text("Reaction"),
                        ),
                        ListTile(
                          onTap: () => print("Add Task"),
                          leading: Icon(Icons.add_task),
                          title: Text("Task"),
                        ),
                        ListTile(
                          textColor: Colors.red,
                          iconColor: Colors.red,
                          onTap: () => Navigator.pop(context),
                          leading: Icon(Icons.cancel),
                          title: Text("Cancel"),
                        ),
                      ],
                    ),
                  ),
                );
              },
              child: Text("Show Modal Bottom Sheet")),
        ),
      ),
    );
  }
}
