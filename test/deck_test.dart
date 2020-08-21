import 'package:MilleBornesCycliste/deck.dart';
import 'package:test/test.dart';

void main() {
  test('Test Deck', (){
    Deck deck = new Deck();
    
    expect(deck.getSize(), equals(46));
  });
}