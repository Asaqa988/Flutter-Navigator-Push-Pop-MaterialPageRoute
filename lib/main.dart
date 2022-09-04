import 'package:flutter/material.dart';
import './screens/firstscreen.dart';
import './screens/secondscreen.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            MaterialButton(
              color: Colors.amber[200],
              onPressed: () {
                setState(() {
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return MyFirstScreen();
                    },
                  ));
                });
              },
              child: const Text(
                "go to the 1st screen",
                style: TextStyle(fontSize: 30),
              ),
            ),
            MaterialButton(
              color: Colors.amber[200],
              onPressed: () {
                setState(() {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) {
                    return MySecondScreen();
                  })));
                });
              },
              child: const Text(
                "go to the 2nd screen",
                style: TextStyle(fontSize: 30),
              ),
            ),
          ]),
        ));
  }
}
