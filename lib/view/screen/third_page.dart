import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    int indexData = ModalRoute.of(context)!.settings.arguments as int;
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Page"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) => Card(
            child: ListTile(
              onTap: () {
                Navigator.of(context).pushNamed("second", arguments: indexData);
              },
              leading: Hero(
                tag: index,
                child: CircleAvatar(
                  backgroundColor: Colors.orange,
                  child: Text(
                    "${indexData}",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              title: Text("Title ${indexData}"),
            ),
          ),
        ),
      ),
    );
  }
}
