/// Решето́ Эратосфе́на — алгоритм нахождения всех простых чисел до некоторого целого числа [n]
/// https://youtu.be/3I6OjxoeSS8?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0
///
/// теория тут: https://skysmart.ru/articles/mathematic/prostye-i-sostavnye-chisla
///
List<int> sieveOfEratosthenes(int n, {toPrint = false}) {
  final array = List.generate(n, (index) => true);
  array[0] = false;
  array[1] = false;
  List<int> arrayOfSimpleNumbers = [];

  for (var i = 2; i < n; i++) {
    if (array[i]) {
      /// значит число простое и записываем его в массив [arrayOfSimpleNumbers]
      arrayOfSimpleNumbers.add(i);
      for (var j = 2 * i; j < n; j = j + i) {
        array[j] = false;
      }
    }
  }

  if (toPrint) print(array);
  if (toPrint) print(arrayOfSimpleNumbers);
  return arrayOfSimpleNumbers;
}
