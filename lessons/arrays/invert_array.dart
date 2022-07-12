/// Функция [invertArray] которая разворачивает массив в обратном порядке
/// https://youtu.be/3I6OjxoeSS8?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0
///
List<dynamic> invertArray(List<int> array, {toPrint = false}) {
  final l = array.length;
  final half = (l / 2).floor();

  /// цикл будет менять сначала первый элемент с последним, потом второй с предпоследним
  /// и так далее пока не дойдет до середины
  /// если длинна массива нечетное то этот элемент не обработается так как он и так по середине
  for (var i = 0; i <= half; i++) {
    /// временная переменная [tmp] для хранения левого элемента
    var tmp = array[i];
    array[i] = array[l - 1 - i];
    array[l - 1 - i] = tmp;
  }
  if (toPrint) print('reverted array: $array');
  return array;
}
