import 'check_if_sorted.dart';
import 'invert_array.dart';
import 'sieve_of_eratosthenes.dart';

/// в этой теме разбор всех алгоритмов относительно [списков] и [массивов]
/// по курсу Тимофея Хирьянова "Алгоритмы на Python 3"
/// https://www.youtube.com/watch?v=KdZ4HF1SrFs&list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0
void arrays() {
  invertArray([1, 2, 3, 4, 5]);
  sieveOfEratosthenes(120);
  print(checkIfSorted([1, 7, 0, 2, 4, 8, 9, 5, 3, 4, 7, 10, 6, 11]));
  print(checkIfSorted([0, 1, 2, 3, 4, 4, 5, 6, 7, 7, 8, 9, 10, 11]));
}
