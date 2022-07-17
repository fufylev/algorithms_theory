/// Recursive sort
/// Quicksort is an in-place sorting algorithm. Developed by British computer scientist Tony Hoare
/// in 1959[1] and published in 1961,[2] it is still a commonly used algorithm for sorting.
/// When implemented well, it can be somewhat faster than merge sort and about two or three times f
/// aster than heapsort.
///
/// https://youtu.be/qf82-r9hl2Y?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0&t=2022
///
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
