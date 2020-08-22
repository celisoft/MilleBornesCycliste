import 'package:MilleBornesCycliste/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyGame extends StatefulWidget {
  final String title;
  MyGame({Key key, this.title}) : super(key: key);

  @override
  _MyGameState createState() => new _MyGameState();
}

class _MyGameState extends State<MyGame> {
  Game _currentGame = new Game();

  Image _getCardImage(int cardIndex) {
    String path = 'assets/motif.png';
    if (_currentGame.player.hand[cardIndex] != null) {
      if (_currentGame.player.hand[cardIndex].getUri() != "") {
        path = _currentGame.player.hand[cardIndex].getUri();
      }
    }

    return Image.asset(path);
  }

  void _incrementCounter(int pCardID, int pDistance) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _currentGame.player.progress += pDistance;
      _currentGame.player.hand.remove(pCardID);
    });
  }

  @override
  Widget build(BuildContext context) {
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
                Image.asset(
                  'assets/motif.png',
                  height: 150,
                ),
                Text(
                  _currentGame.getPlayerProgress(),
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
                              onPressed: () => _incrementCounter(
                                  0, _currentGame.player.hand[0].distance),
                              child: LimitedBox(
                                  maxHeight: 50, child: _getCardImage(0)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  1, _currentGame.player.hand[1].distance),
                              child: LimitedBox(
                                  maxHeight: 50, child: _getCardImage(1)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  2, _currentGame.player.hand[2].distance),
                              child: LimitedBox(
                                  maxHeight: 50, child: _getCardImage(2)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  3, _currentGame.player.hand[3].distance),
                              child: LimitedBox(
                                  maxHeight: 50, child: _getCardImage(3)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  4, _currentGame.player.hand[4].distance),
                              child: LimitedBox(
                                  maxHeight: 50, child: _getCardImage(4)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  5, _currentGame.player.hand[5].distance),
                              child: LimitedBox(
                                  maxHeight: 50, child: _getCardImage(5)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  6, _currentGame.player.hand[6].distance),
                              child: LimitedBox(
                                  maxHeight: 50, child: _getCardImage(6)))),
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
