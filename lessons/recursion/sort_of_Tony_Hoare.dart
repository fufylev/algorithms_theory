/// Рекурсивная сортировка
/// Быстрая сортировка, сортировка Хоара (англ. quicksort), часто называемая qsort
/// (по имени в стандартной библиотеке языка Си) — алгоритм сортировки,
/// разработанный английским информатиком Тони Хоаром во время своей работы в МГУ в 1960 году.
///
/// https://youtu.be/qf82-r9hl2Y?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0&t=2022
List<int> sortByTonyHoare(List<int> array) {
  if (array.length <= 1) return array;
  List<int> left = [], right = [], middle = [];
  for (int x in array) {
    if (x < array[0]) {
      left.add(x);
    } else if (x == array[0]) {
      middle.add(x);
    } else {
      right.add(x);
    }
  }

  return [...sortByTonyHoare(left), ...middle, ...sortByTonyHoare(right)];
}
