import 'package:MilleBornesCycliste/deck.dart';
import 'package:MilleBornesCycliste/game.dart';
import 'package:MilleBornesCycliste/player.dart';
import 'package:test/test.dart';

void main() {
  test('Test init player from game', (){
    Game game = new Game();
    Player player = game.player;
    expect(player, isNotNull);
    expect(player.hand, isNotNull);
    expect(player.hand, isNotEmpty);
    expect(player.hand.length, equals(7));
  });

  test('Test init deck from game', (){
    Game game = new Game();
    Deck deck = game.deck;
    expect(deck.cards.length, equals(39));
  });

  
}