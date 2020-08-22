import 'package:MilleBornesCycliste/card.dart';

///
/// Représente un joueur
///
class Player {
  /// Progression
  int progress;

  /// La main du joueur
  Map<int, Card> hand;

  Player() {
    hand = new Map();
    progress = 0;
  }

  ///
  /// Ajoute une carte à la main du joueur
  ///
  addCardInHand(int index, Card pCard) {
    hand[index] = pCard;
  }
}
