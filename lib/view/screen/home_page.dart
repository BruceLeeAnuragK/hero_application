import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Card(
          child: ListTile(
            onTap: () {
              Navigator.of(context).pushNamed("second", arguments: index);
            },
            leading: Hero(
              tag: index,
              child: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text(
                  "${index + 1}",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            title: Text("Title ${index + 1}"),
          ),
        ),
      ),
    );
  }
}
