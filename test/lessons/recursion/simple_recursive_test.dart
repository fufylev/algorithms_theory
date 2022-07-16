import 'package:test/test.dart';

import '../../../lessons/recursion/simple_recursive.dart';

void main() {
  group('Проверка всех алгоритмов простых рекурсий', () {
    test('Вычисление факториала от числа [n]', () {
      expect(fac(5), 120);
    });

    test('Алгоритм Евклида общий', () {
      expect(gcd(5, 20), 5);
    });

    test('Алгоритм Евклида короткий', () {
      expect(gcdShort(5, 20), 5);
    });

    test('функция быстрого возведения в степень', () {
      expect(pow(2, 5), 32);
    });

    test('Ханойская башня - алгоритм перекладывания дисков башни с кол-вом дисков [n]', () {
      expect(hanoi(5), 31);
    });
  });
}
