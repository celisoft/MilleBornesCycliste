import 'package:MilleBornesCycliste/card.dart';

///
/// Représente un joueur
///
class Player {
  /// Progression
  int progress;

  /// La main du joueur
  List<Card> hand;

  Player() {
    hand = new List();
    progress = 0;
  }

  ///
  /// Ajoute une carte à la main du joueur
  ///
  addCardInHand(Card pCard) {
    hand.add(pCard);
  }
}
