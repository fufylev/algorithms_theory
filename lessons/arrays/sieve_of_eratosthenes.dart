/// In mathematics, the sieve of Eratosthenes is an ancient algorithm for finding all prime numbers
/// up to any given limit. It does so by iteratively marking as composite (i.e., not prime)
/// the multiples of each prime, starting with the first prime number, 2.
/// https://youtu.be/3I6OjxoeSS8?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0
///
List<int> sieveOfEratosthenes(int n, {toPrint = false}) {
  assert(n > 1, 'Число должно быть более 1 так как 1 уже не простое число');
  final array = List.generate(n, (index) => true);
  array[0] = false;
  array[1] = false;
  List<int> arrayOfSimpleNumbers = [];

  for (var i = 2; i < n; i++) {
    if (array[i]) {
      /// this means the number is prime and write it into an array [arrayOfSimpleNumbers]
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
