import 'package:test/test.dart';
import "package:MilleBornesCycliste/card.dart";

void main() {
  test('Test Card 25 km', (){
    Card card25 = Card(0, 25);
    expect(card25.getUri(), equals('assets/borne_25.png'));
  });

  test('Test Card 50 km', (){
    Card card50 = Card(0, 50);
    expect(card50.getUri(), equals('assets/borne_50.png'));
  });

  test('Test Card 75 km', (){
    Card card75 = Card(0, 75);
    expect(card75.getUri(), equals('assets/borne_75.png'));
  });

  test('Test Card 100 km', (){
    Card card100 = Card(0, 100);
    expect(card100.getUri(), equals('assets/borne_100.png'));
  });

  test('Test Card 200 km', (){
    Card card200 = Card(0, 200);
    expect( card200.getUri(), equals('assets/borne_200.png'));
  });
}
