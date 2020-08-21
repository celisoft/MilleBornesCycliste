import 'dart:developer' as developer;

///
/// Représente une carte de jeu
///
class Card {
  // ID
  int id;

  // La distance que permet de faire la carte
  int distance;

  Card(int pId, int pDistance){
    id = pId;
    distance = pDistance;
    developer.log("Card " + this.distance.toString() + " created");
  }

  String getUri(){
    return 'assets/borne_' + this.distance.toString() + '.png';
  }

}
