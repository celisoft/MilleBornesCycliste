import 'dart:developer';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1000 bornes',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MySplashscreen(),
    );
  }
}

class MySplashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '1000 bornes cycliste',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
                Column(
                  children: [
                    Text(
                      'Appuyer ou cliquer pour jouer',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
          GestureDetector(onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyGame()),
            );
          }),
        ],
      ),
    );
  }
}

class MyGame extends StatefulWidget {
  final String title;
  MyGame({Key key, this.title}) : super(key: key);

  @override
  _MyGameState createState() => new _MyGameState();
}

class _MyGameState extends State<MyGame> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
      print(_counter);
    });
  }

  @override
  Widget build(BuildContext context) {
    int _counter = 0;
    return Scaffold(
      //backgroundColor: Colors.green,
      body: Stack(
        children: <Widget>[
          //Center(child: Image.asset('assets/images/background.jpg')),

          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '$_counter',
                  style: Theme.of(context).textTheme.headline4,
                ),
              ],
            ),
          ),

          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Table(
                border: TableBorder.all(
                    color: Colors.black26, style: BorderStyle.none),
                children: [
                  TableRow(children: [
                    TableCell(child: Center(child: Text('Carte 1'))),
                    TableCell(child: Center(child: Text('Carte 2'))),
                    TableCell(child: Center(child: Text('Carte 3'))),
                    TableCell(child: Center(child: Text('Carte 4'))),
                    TableCell(child: Center(child: Text('Carte 5'))),
                    TableCell(child: Center(child: Text('Carte 6'))),
                    TableCell(child: Center(child: Text('Carte 7'))),
                  ]),
                  TableRow(children: [
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: _incrementCounter,
                              child: SizedBox(
                                  child: Image.asset('assets/borne_25.png')))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: _incrementCounter,
                              child: SizedBox(
                                  child: Image.asset('assets/borne_25.png')))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: _incrementCounter,
                              child: SizedBox(
                                  child: Image.asset('assets/borne_25.png')))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: _incrementCounter,
                              child: SizedBox(
                                  child: Image.asset('assets/borne_25.png')))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: _incrementCounter,
                              child: SizedBox(
                                  child: Image.asset('assets/borne_25.png')))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: _incrementCounter,
                              child: SizedBox(
                                  child: Image.asset('assets/borne_25.png')))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: _incrementCounter,
                              child: SizedBox(
                                  child: Image.asset('assets/borne_25.png')))),
                    ),
                  ])
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
