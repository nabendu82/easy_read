import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontSize = 40;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.done,
                  style: TextStyle(fontSize: _fontSize),
                  maxLines: null,
                ),
              ),
              Slider(
                value: _fontSize,
                min: 30,
                max: 200, 
                onChanged: (newSize){
                  setState(() => _fontSize = newSize);
                }
              )
            ],
          ),
        )
      )
    );
  }
}