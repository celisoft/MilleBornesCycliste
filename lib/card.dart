import 'dart:developer' as developer;

///
/// Représente une carte de jeu
///
class Card {
  // La distance que permet de faire la carte
  int distance;

  Card(int pDistance) {
    distance = pDistance;
    developer.log("Card " + this.distance.toString() + " created");
  }

  String getUri() {
    String uri = "";
    if (this.distance != null) {
      uri = 'assets/borne_' + this.distance.toString() + '.png';
    }
    return uri;
  }

  String toString() {
    return this.distance.toString();
  }
}
