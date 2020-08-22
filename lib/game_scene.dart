import 'package:MilleBornesCycliste/game.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

class MyGame extends StatefulWidget {
  final String title;
  MyGame({Key key, this.title}) : super(key: key);

  @override
  _MyGameState createState() => new _MyGameState();
}

class _MyGameState extends State<MyGame> {
  final Game _currentGame = new Game();
  String _playedCardPath = 'assets/motif.png';
  int _emptyID = 10;

  Image _getCardImage(int cardIndex) {
    String path = 'assets/motif.png';
    if (_currentGame.player.hand[cardIndex] != null) {
      if (_currentGame.player.hand[cardIndex].getUri() != "") {
        path = _currentGame.player.hand[cardIndex].getUri();
      }
    }
    return Image.asset(path);
  }

  void _getCard() {
    setState(() {
      _currentGame.pickCard(_emptyID);
      _emptyID = 10;
      _currentGame.player.canPick = true;
      _currentGame.message = "";
    });
  }

  void _incrementCounter(int pCardID, int pDistance) {
    setState(() {
      if (_currentGame.player.canPick) {
        _currentGame.player.canPick = false;
        _currentGame.message = "Piochez une nouvelle carte.";
        _currentGame.player.progress += pDistance;
        if (_currentGame.player.progress == Game.TARGET_DISTANCE) {
          // Objectif atteint
          developer.log("Gagné !");
          _currentGame.message = "Félicitations ! 1000 bornes à vélo !";
        } else if (_currentGame.player.progress > Game.TARGET_DISTANCE ||
            (_currentGame.player.progress + 25) > Game.TARGET_DISTANCE) {
          // Objectif dépassé ou non atteignable au prochain tour
          developer.log("Perdu !");
          _currentGame.message = "Perdu ! Vous avez dépassé.";
        } else {
          final int todo = Game.TARGET_DISTANCE - _currentGame.player.progress;
          developer.log("Encore " + todo.toString() + " bornes à faire !");
        }
        _playedCardPath = _currentGame.player.hand[pCardID].getUri();
        _currentGame.player.hand.remove(pCardID);
        _emptyID = pCardID;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[900],
      body: Stack(
        children: <Widget>[
          Center(
            child: SizedBox(
              width: 350,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40.0),
                      child: Text(
                        _currentGame.getPlayerProgress(),
                        style: Theme.of(context).textTheme.headline4,
                      ),
                    ),
                    Table(
                        border: TableBorder.all(
                            color: Colors.black26, style: BorderStyle.none),
                        children: [
                          TableRow(children: [
                            TableCell(
                                child: LimitedBox(
                                    child: RaisedButton(
                                        onPressed: () => _getCard(),
                                        child: SizedBox(
                                            child: Image.asset(
                                                'assets/motif.png'))))),
                            TableCell(
                                child: LimitedBox(
                                    child: LimitedBox(
                                        maxHeight: 180,
                                        child: Image.asset(_playedCardPath)))),
                          ]),
                        ])
                  ]),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  _currentGame.message,
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Table(
                border: TableBorder.all(
                    color: Colors.black26, style: BorderStyle.none),
                children: [
                  TableRow(children: [
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  0, _currentGame.player.hand[0].distance),
                              child: LimitedBox(
                                  maxHeight: 80, child: _getCardImage(0)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  1, _currentGame.player.hand[1].distance),
                              child: LimitedBox(
                                  maxHeight: 80, child: _getCardImage(1)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  2, _currentGame.player.hand[2].distance),
                              child: LimitedBox(
                                  maxHeight: 80, child: _getCardImage(2)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  3, _currentGame.player.hand[3].distance),
                              child: LimitedBox(
                                  maxHeight: 80, child: _getCardImage(3)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  4, _currentGame.player.hand[4].distance),
                              child: LimitedBox(
                                  maxHeight: 80, child: _getCardImage(4)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  5, _currentGame.player.hand[5].distance),
                              child: LimitedBox(
                                  maxHeight: 80, child: _getCardImage(5)))),
                    ),
                    TableCell(
                      child: FittedBox(
                          child: RaisedButton(
                              onPressed: () => _incrementCounter(
                                  6, _currentGame.player.hand[6].distance),
                              child: LimitedBox(
                                  maxHeight: 80, child: _getCardImage(6)))),
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
