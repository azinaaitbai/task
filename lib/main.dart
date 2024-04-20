import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Jersey10'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Add Assets'),
          centerTitle: true,
        ),
        body: Center(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image(
                  image: AssetImage('assets/images/flower.jpg'),
              ),
              Image.asset('assets/images/logo.png'),
              Positioned(top:16, left:125, child: Text('My custom font', style: TextStyle(fontSize: 30, color: Colors.black, fontFamily: 'Jersey10')))
            ],
          ),
        ),
      ),
    ); // removed the trailing comma here
  }
}