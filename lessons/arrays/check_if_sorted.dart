/// Check if [array] is sorted by [O(array.length)] operations
bool checkIfSorted(List<int> array, {bool ascending = true}) {
  bool flag = true;

  final direction = 2 * (ascending == true ? 1 : -1) - 1;

  for (int i = 0; i < array.length - 1; i++) {
    if (direction * array[i] > direction * array[i + 1]) {
      flag = false;
    }
  }
  return flag;
}
