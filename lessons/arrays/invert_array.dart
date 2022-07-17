/// Function [invertArray] that reverts an [array]
/// https://youtu.be/3I6OjxoeSS8?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0
///
List<dynamic> invertArray(List<int> array, {toPrint = false}) {
  assert(array is List<int>, 'Некорректный список - должен содержать только числа');
  assert(array.length > 0, 'Список должен быть не пустым');

  final l = array.length;
  final half = (l / 2).floor();

  /// the loop will change first the first element with the last, then the second with the penultimate
  /// and so on until it reaches the middle
  /// if the length of the array is odd, then this element will not be processed,
  /// since it is already in the middle
  for (var i = 0; i <= half; i++) {
    /// временная переменная [tmp] для хранения левого элемента
    var tmp = array[i];
    array[i] = array[l - 1 - i];
    array[l - 1 - i] = tmp;
  }
  if (toPrint) print('reverted array: $array');
  return array;
}
