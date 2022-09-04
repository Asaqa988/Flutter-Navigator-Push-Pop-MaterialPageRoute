import 'package:flutter/material.dart';
import 'package:apppfoortoooday/main.dart';

class MySecondScreen extends StatefulWidget {
  const MySecondScreen({super.key});

  @override
  State<MySecondScreen> createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
            child: Column(
          children: [
            Text("hello from the second screen", style: TextStyle(fontSize: 30)),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context,
                        MaterialPageRoute(builder: ((context) {
                      return MyApp();
                    })));
                  });
                },
                child: Text("Go back to the main screen"))
          ],
        )),
    );
  }
}
