import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var counter = 1;
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<MyHomePage> {
  int counter = 1;
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('baitap'),
      ),
      body: SafeArea(
        child: Padding (
          padding: EdgeInsets.all(16.0),
        child: Center (
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton (
                  onPressed:(){
                setState(() {
                  counter++;
                });
              },
                  child: Text('Click me!')
              ),
          Text(
            '$counter',
            style: Theme.of(context).textTheme.headline4,
          ),
              Text("so lan click: "),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Flexible(child:
                      TextField(controller: myController,)
                  ),
                  SizedBox(width: 16,),
                  SizedBox(width: 16,),
                ],
              )
            ],
          ),
        ),
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(myController.text)));
        },
      ),
    );
  }
}



