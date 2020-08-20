import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
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
          Center(child: Image.asset('assets/images/background.jpg')),
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

class MyGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Stack(
        children: <Widget>[
          Center(child: Image.asset('assets/images/background.jpg')),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Playing the game',
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
