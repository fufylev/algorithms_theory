/// Сортировка слиянием (англ. merge sort) — алгоритм сортировки, который упорядочивает списки
/// (или другие структуры данных, доступ к элементам которых можно получать только последовательно,
/// например — потоки) в определённом порядке.
/// Эта сортировка — хороший пример использования принципа «разделяй и властвуй».
///
/// https://youtu.be/qf82-r9hl2Y?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0&t=128
List<int> sortByMerge(List<int> array) {
  if (array.length <= 1) return array;
  final middle = (array.length / 2).floor();
  return List.from(
    merge(
      // для левой половины от 0 до [middle] включительно
      sortByMerge(List.generate(middle, (index) => array[index])),
      // для правой половины от [middle + 1] до [array.length]
      sortByMerge(List.generate(array.length - middle, (index) => array[index + middle])),
    ),
  );
}

/// Функция слияния отсортированных массивов
List<int> merge(List<int> a, List<int> b) {
  List<int> c = List.generate(a.length + b.length, (index) => 0);
  int i = 0, k = 0, n = 0;

  /// Сортировка называется устойчивой если она не меняет порядок равных элементов
  while (i < a.length && k < b.length) {
    /// исполняем устойчивую сортировку
    /// если написать a[i] < b[k] то это будет неустойчивая сортировка так как она может
    /// поменять местами равные элементы
    if (a[i] <= b[k]) {
      c[n] = a[i];
      i++;
    } else {
      c[n] = b[k];
      k++;
    }
    n++;
  }
  while (i < a.length) {
    c[n] = a[i];
    i++;
    n++;
  }
  while (k < b.length) {
    c[n] = b[k];
    k++;
    n++;
  }
  return c;
}
