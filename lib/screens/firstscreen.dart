import 'package:apppfoortoooday/main.dart';
import 'package:flutter/material.dart';

class MyFirstScreen extends StatefulWidget {
  const MyFirstScreen({super.key});

  @override
  State<MyFirstScreen> createState() => _MyFirstScreenState();
}

class _MyFirstScreenState extends State<MyFirstScreen> {
  String myTestGroupValue = "10.3kjehsjkfdhskjfhs";
    String myTestGroupValue2 = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
            child: Column(
          children: [
            Text("hello from the first screen", style: TextStyle(fontSize: 30)),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  Navigator.pop(context, MaterialPageRoute(builder: ((context) {
                    return MyApp();
                  })));
                });
              },
              child: Text("Go back to the main screen"),
            ),
            RadioListTile(
                secondary: Icon(Icons.man),
                title: Text("Male"),
                subtitle: Text("Eg-Jordaian,syrian,anyother"),
                value: "male",
                groupValue: myTestGroupValue,
                onChanged: (val) {
                  setState(() {
                     myTestGroupValue = val.toString();
                  });
                }),
            RadioListTile(
              secondary: Icon(Icons.woman),
              title: Text("female"),
              subtitle: Text("Eg-Jordaian,syrian,anyother"),
              groupValue: myTestGroupValue,
              value: "female",
              onChanged: (val) {
                setState(() {
                  myTestGroupValue = val.toString();
                });
              },
            ),

Text("select the country",style: TextStyle(fontSize: 30),),
                        RadioListTile(
                secondary: Icon(Icons.man),
                title: Text("UAe"),
                subtitle: Text("Eg-Jordaian,syrian,anyother"),
                value: "1",
                groupValue: myTestGroupValue2,
                onChanged: (val) {
                  setState(() {
                     myTestGroupValue2 = val.toString();
                  });
                }),
            RadioListTile(
              secondary: Icon(Icons.woman),
              title: Text("Jordan"),
              subtitle: Text("Eg-Jordaian,syrian,anyother"),
              groupValue: myTestGroupValue2,
              value: "2",
              onChanged: (val) {
                setState(() {
                  myTestGroupValue2 = val.toString();
                });
              },
            )
          ],
        )),
      ),
    );
  }
}
