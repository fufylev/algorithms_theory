import 'package:test/test.dart';

import '../../../lessons/arrays/binary_search.dart';

void main() {
  group('Binary search', () {
    // Arrange
    final givenArray = [0, 1, 5, 7, 8, 9];

    group('Recursive binary', () {
      test('positive test', () {
        // Act
        final index = binarySearchRecursive(givenArray, 7);

        // Assert
        expect(index, 3);
      });

      test('negative test', () {
        // Act
        final index = binarySearchRecursive(givenArray, 3);

        // Assert
        expect(index, -1);
      });
    });

    group('Iterative binary search', () {
      test('positive test', () {
        // Act
        final index = binarySearchRecursive(givenArray, 5);

        // Assert
        expect(index, 2);
      });

      test('negative test', () {
        // Act
        final index = binarySearchRecursive(givenArray, 3);

        // Assert
        expect(index, -1);
      });
    });

    test('Boundary left', () {
      // Act
      final index = leftBound(givenArray, 3);

      // Assert
      expect(index, 1);
    });

    test('Boundary right', () {
      // Act
      final index = rightBound(givenArray, 3);

      // Assert
      expect(index, 2);
    });
  });
}
