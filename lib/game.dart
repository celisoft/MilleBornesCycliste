import 'dart:math';
import 'package:MilleBornesCycliste/card.dart';
import 'package:MilleBornesCycliste/player.dart';
import 'package:MilleBornesCycliste/deck.dart';

class Game {
  Player player;
  Deck deck;
  Random random = Random();
  Game() {
    player = new Player();
    deck = new Deck();
    createHand();
  }

  int getRandomID() {
    return this.random.nextInt(45);
  }

  void createHand() {
    for (var i = 0; i < 7; i++) {
      int randomID = getRandomID();
      Card pickedCard = deck.getCard(randomID);
      player.addCardInHand(i, pickedCard);
    }
  }

  String getPlayerProgress() {
    return player.progress.toString();
  }
}
