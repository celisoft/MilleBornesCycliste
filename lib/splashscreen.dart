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
                  style: Theme.of(context).textTheme.headline1,
                ),
                Column(
                  children: [
                    Text(
                      'Appuyer ou cliquer pour jouer',
                      style: Theme.of(context).textTheme.headline6,
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
