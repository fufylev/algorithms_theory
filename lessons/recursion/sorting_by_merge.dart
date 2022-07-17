/// In computer science, merge sort (also commonly spelled as mergesort) is an efficient,
/// general-purpose, and comparison-based sorting algorithm. Most implementations produce
/// a stable sort, which means that the order of equal elements is the same in the input and output.
/// Merge sort is a divide-and-conquer algorithm that was invented by John von Neumann in 1945
///
/// https://youtu.be/qf82-r9hl2Y?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0&t=128
List<int> sortByMerge(List<int> array) {
  if (array.length <= 1) return array;
  final middle = (array.length / 2).floor();
  return List.from(
    merge(
      // for the left half from 0 to [middle] inclusive
      sortByMerge(List.generate(middle, (index) => array[index])),
      // for right half from [middle + 1] to [array.length]
      sortByMerge(List.generate(array.length - middle, (index) => array[index + middle])),
    ),
  );
}

/// Sorted Arrays Merging Function
List<int> merge(List<int> a, List<int> b) {
  List<int> c = List.generate(a.length + b.length, (index) => 0);
  int i = 0, k = 0, n = 0;

  /// A sort is said to be stable if it does not change the order of equal elements.
  while (i < a.length && k < b.length) {
    /// perform a stable sort
    /// if you write a[i] < b[k] then this will be an unstable sort, since it can swap equal elements
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
