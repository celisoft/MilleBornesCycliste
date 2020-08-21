import 'package:MilleBornesCycliste/card.dart';

///
/// Représente la pioche
///
class Deck{
  Map<int, Card> cards;

  Deck(){
    // Initialisation en dur pour le debut :
    cards = new Map();

    // 10 de 25
    for (var i = 0; i < 10; i++) {
      cards[i] = new Card(25);
    }
    
    // 10 de 50
    for (var i = 10; i < 20; i++) {
      cards[i] = new Card(50);
    }

    // 10 de 75
    for (var i = 20; i < 30; i++) {
      cards[i] = new Card(75);
    }

    // 12 de 100
    for (var i = 30; i < 42; i++) {
      cards[i] = new Card(100);
    }

    // 4 de 200
    for (var i = 42; i < 46; i++) {
      cards[i] = new Card(200);
    }
  }

  ///
  /// Retourne la taille de la pioche
  ///
  int getSize(){
    return cards.length;
  }
}