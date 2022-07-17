import 'advance_recursions.dart';
import 'simple_recursive.dart';
import 'sort_of_Tony_Hoare.dart';
import 'sorting_by_merge.dart';

/// /// Some code regarding topic of Recursions
///
void recursions() {
  print(sortByMerge([1, 7, 0, 2, 4, 8, 9, 5, 3, 4, 7, 10, 6, 11]));
  print(sortByTonyHoare([1, 7, 0, 2, 4, 8, 9, 5, 3, 4, 7, 10, 6, 11]));
  simpleRecursions();
  advanceRecursions();
}
