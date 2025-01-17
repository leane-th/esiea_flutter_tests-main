import 'package:test/test.dart';
import 'package:testing_app/models/favorites.dart';

void main() {
  group('Testing App Provider', () {
    Favorites favorites = Favorites();

    //voir setUp et tearDown
    test('A new item should be added', () {
      int number = 35;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      expect(favorites.items.length, 1);
    });

    test('An item should be removed', () {
      int number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      expect(favorites.items.length, 2);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
      expect(favorites.items.length, 1);
    });

    test('Duplicate items should not be added', () {
      int number = 55;
      favorites.add(number);
      favorites.add(number); 
      expect(favorites.items.contains(number), true);
      expect(favorites.items.length, 2);
      expect(favorites.items.where((item) => item == number).length, 1);
    });
  });
}
