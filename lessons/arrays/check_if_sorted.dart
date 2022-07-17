/// Проверка отсортированности массива [array] за [O(array.length)]
bool checkIfSorted(List<int> array, {bool ascending = true}) {
  bool flag = true;

  // направленность сортировки массива
  final direction = 2 * (ascending == true ? 1 : -1) - 1;

  for (int i = 0; i < array.length - 1; i++) {
    if (direction * array[i] > direction * array[i + 1]) {
      flag = false;
    }
  }
  return flag;
}
