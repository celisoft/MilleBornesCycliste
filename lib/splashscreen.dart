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
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(40.0),
                    child: Text(
                      '1000 bornes cycliste',
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ),
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Center(
                          child: Text(
                            'Appuyer ou cliquer pour jouer',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Center(
                          child: Text(
                            '@celine_liberal  @zoebelleton',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                FittedBox(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Center(
                          child: Text(
                            'https://github.com/celisoft/MilleBornesCycliste',
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                      ],
                    ),
                  ),
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
