import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow.withOpacity(0.5),
      //column and row both have list of children/widgets
      body: Column(
        //default its elements are at start
        // mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //default it takes only required space
        //all of this same goes with row
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        // verticalDirection: VerticalDirection.down,
        // verticalDirection: VerticalDirection.up,
        textDirection: TextDirection.rtl,
        textBaseline: TextBaseline.ideographic,
        children: [
          Text(
            '1234',
            style: TextStyle(fontSize: 40),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
            child: Text(
              '1234',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
            child: Text(
              '2',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
            child: Text(
              '3',
              style: TextStyle(fontSize: 40),
            ),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.white,
            child: Text(
              '4',
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}
