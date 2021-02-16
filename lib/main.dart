import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '영적 나무',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyTree(),
    );
  }
}

class MyTree extends StatefulWidget {
  @override
  _MyTreeState createState() => _MyTreeState();
}

class _MyTreeState extends State<MyTree> {
  int _counter = 0;
  int _bottlecounter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _bottleincre() {
    setState(() {
      _bottlecounter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("영적 나무"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_counter < 6) Image.asset('images/grass.jpg'),
            if (_counter > 5 && _counter < 11) Image.asset('images/plant.jpg'),
            if (_counter > 10) Image.asset('images/tree.jpg'),
            SizedBox(
              height: 10,
            ),
            Text("물주기"),
            SizedBox(
              height: 20,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                  onPressed: _incrementCounter,
                  tooltip: '증가',
                  child: Image.asset('images/waterbottle.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
