import 'package:test/test.dart';

import '../../../lessons/arrays/invert_array.dart';

void main() {
  test('check function invert_array() shall return reverted array', () {
    // Arrange
    final array = [1, 2, 3, 4, 5];
    final revertedArray = [5, 4, 3, 2, 1];

    // Act
    final receivedArray = invertArray(array);

    // Assert
    expect(receivedArray, revertedArray);
  });
}
