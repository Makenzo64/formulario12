import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

@override
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "formulario",
      theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Contact Us",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5,),
                child: Text(
                  "E-mail: ",
                  style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Text(
                "Phone:",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Text(
                "Message:",
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 18),
              ),
              TextField(
                maxLines: 9,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: false,
                  ),
                  Text(
                    "Send a copy to yourself",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: false,
                  ),
                  Text(
                    "Suscribise to our newsletter",
                    style: TextStyle(fontWeight: FontWeight.w500,),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.blueAccent,
                textColor: Colors.black,
                child: Text(
                  "Send",
                  style: TextStyle(fontSize: 18,
                    height: 1,
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
              ),
              Text("(Required Fields)",
                style: TextStyle(fontSize: 13,
                  fontWeight: FontWeight.normal,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}