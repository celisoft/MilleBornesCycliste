import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'game_scene.dart';

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
