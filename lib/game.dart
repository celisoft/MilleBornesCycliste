import 'package:MilleBornesCycliste/player.dart';
import 'package:MilleBornesCycliste/deck.dart';

class Game{
  Player player;
  Deck deck;

  Game(){
    player = new Player();
    deck = new Deck();
  }
}