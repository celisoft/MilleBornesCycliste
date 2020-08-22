import 'dart:math';
import 'package:MilleBornesCycliste/card.dart';
import 'package:MilleBornesCycliste/player.dart';
import 'package:MilleBornesCycliste/deck.dart';

class Game {
  static const int TARGET_DISTANCE = 1000;

  Player player;
  Deck deck;
  Random random;
  String message;
  List<int> alreadyPlayedCardsID;

  Game() {
    message = "1000 bornes cycliste";
    player = new Player();
    deck = new Deck();
    random = Random();
    alreadyPlayedCardsID = new List();
    createHand();
  }

  int getRandomID() {
    int randomID = this.random.nextInt(45);
    while (alreadyPlayedCardsID.contains(randomID)) {
      randomID = this.random.nextInt(45);
    }
    return randomID;
  }

  void createHand() {
    for (var i = 0; i < 7; i++) {
      final int randomID = getRandomID();
      Card pickedCard = deck.getCard(randomID);
      player.addCardInHand(i, pickedCard);
      alreadyPlayedCardsID.add(randomID);
    }
  }

  String getPlayerProgress() {
    return player.progress.toString();
  }

  void pickCard(int handPosition) {
    if (handPosition < 7) {
      final int randomID = getRandomID();
      Card pickedCard = deck.getCard(randomID);
      player.addCardInHand(handPosition, pickedCard);
    }
  }
}
