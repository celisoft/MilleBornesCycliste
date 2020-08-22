import 'package:MilleBornesCycliste/card.dart';

///
/// Représente un joueur
///
class Player {
  /// La main du joueur
  List<Card> hand;

  Player() {
    hand = new List();
  }

  ///
  /// Ajoute une carte à la main du joueur
  ///
  addCardInHand(Card pCard) {
    hand.add(pCard);
  }
}
