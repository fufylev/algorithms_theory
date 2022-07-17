import 'package:test/test.dart';

import '../../../lessons/recursion/simple_recursive.dart';

void main() {
  group('Verification of all simple recursion algorithms', () {
    test('Calculating the factorial of a number [n]', () {
      expect(fac(5), 120);
    });

    test("Euclid's general algorithm", () {
      expect(gcd(5, 20), 5);
    });

    test("Euclid's short algorithm", () {
      expect(gcdShort(5, 20), 5);
    });

    test('quick exponentiation function', () {
      expect(pow(2, 5), 32);
    });

    test(
      'Tower of Hanoi - Algorithm for shifting the disks of a tower with the number of disks [n]',
      () {
        expect(hanoi(5), 31);
      },
    );
  });
}
