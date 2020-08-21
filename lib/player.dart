import 'package:MilleBornesCycliste/card.dart';

///
/// Représente un joueur
///
class Player {
  /// La main du joueur
  List<Card> cards;

  Player();

  ///
  /// Ajoute une carte à la main du joueur
  ///
  addCardInHand(Card pCard){
    cards.add(pCard);
  }
}