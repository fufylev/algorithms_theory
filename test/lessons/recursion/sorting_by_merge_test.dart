import 'package:test/test.dart';

import '../../../lessons/recursion/sort_of_Tony_Hoare.dart';
import '../../../lessons/recursion/sorting_by_merge.dart';

void main() {
  group('Сортировки рекурсией', () {
    // Arrange
    final unsorted = [1, 7, 0, 2, 4, 8, 9, 5, 3, 4, 7, 10, 6, 11];
    test('Рекурсивная сортировка слиянием для массивов чисел', () {
      // Act
      final sorted = sortByMerge(unsorted);

      // Assert
      expect(sorted, [0, 1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 11]);
    });

    test('Рекурсивная сортировка массива чисел методом сортировки Тони Хоара ', () {
      // Act
      final sorted = sortByTonyHoare(unsorted);

      // Assert
      expect(sorted, [0, 1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 11]);
    });
  });
}
