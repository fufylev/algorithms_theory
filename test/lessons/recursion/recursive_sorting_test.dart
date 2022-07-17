import 'package:test/test.dart';

import '../../../lessons/recursion/sort_of_Tony_Hoare.dart';
import '../../../lessons/recursion/sorting_by_merge.dart';

void main() {
  group('Sort by recursion', () {
    // Arrange
    final unsorted = [1, 7, 0, 2, 4, 8, 9, 5, 3, 4, 7, 10, 6, 11];
    final sortedGiven = [0, 1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 11];

    test('Recursive merge sort for arrays of numbers', () {
      // Act
      final sorted = sortByMerge(unsorted);

      // Assert
      expect(sorted, sortedGiven);
    });

    test("Recursive sorting of an array of numbers by Tony Hoare's sorting method", () {
      // Act
      final sorted = sortByTonyHoare(unsorted);

      // Assert
      expect(sorted, sortedGiven);
    });
  });
}
