import 'package:MilleBornesCycliste/card.dart';

///
/// Représente un joueur
///
class Player {
  /// Progression
  int progress;
  bool canPick;

  /// La main du joueur
  Map<int, Card> hand;

  Player() {
    hand = new Map();
    progress = 0;
    canPick = true;
  }

  ///
  /// Ajoute une carte à la main du joueur
  ///
  addCardInHand(int index, Card pCard) {
    hand[index] = pCard;
  }
}
