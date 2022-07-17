/// /// Performing various tasks of recursion from lecture #7
///
/// https://youtu.be/0Bc8zLURY-c?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0
///
void simpleRecursions() {
  print(fac(5));
  print(gcd(5, 20));
  print(gcdShort(5, 20));
  print(pow(2, 5));
  print('Minimum number of steps: ${hanoi(5)}');
}

/// Calculating the factorial of a number [n]
int fac(int n) {
  assert(n >= 0, 'Factorial not defined');
  return n == 0 ? 1 : fac(n - 1) * n;
}

/// Euclidean algorithm,[note 1] or Euclid's algorithm, is an efficient method for computing
/// the greatest common divisor (GCD) of two integers (numbers), the largest number
/// that divides them both without a remainder
/// this is a general example of calculating the Euclid's Algorithm
int gcd(int a, int b) {
  if (a == b)
    return a;
  else if (a > b) {
    return gcd(a - b, b);
  } else {
    return gcd(a, b - a);
  }
}

/// Euclidean algorithm,[note 1] or Euclid's algorithm, is an efficient method for computing
/// the greatest common divisor (GCD) of two integers (numbers), the largest number
/// that divides them both without a remainder
/// this is the shortest example of calculating the Euclid's Algorithm
int gcdShort(int a, int b) {
  return b == 0 ? a : gcdShort(b, a % b);
}

/// quick exponentiation function
pow(num a, int n) {
  assert(n >= 0, 'степень должна быть больше 0');
  return n == 0
      ? 1
      : n % 2 == 1
          ? pow(a, n - 1) * a
          : pow(a * a, (n / 2).floor());
}

/// Tower of Hanoi - Algorithm for shifting the disks of a tower with the number of disks [n]
/// and the number of towers equal to 3
///
int hanoi(int n) {
  int count = 0; // minimum number of algorithm execution steps
  String a = 'A';
  String b = 'B';
  String c = 'C';

  void hanoiImpl(int n, String a, String b, String c) {
    void moveNext(int n, String i, String j) {
      count++;
      // step('Step №$count: disk #$n move $i -> $j');
    }

    if (n == 1) {
      moveNext(1, a, c);
      return;
    }
    hanoiImpl(n - 1, a, c, b);
    moveNext(n, a, c);
    hanoiImpl(n - 1, b, a, c);
  }

  hanoiImpl(n, a, b, c);
  return count;
}

/// Drawing rectangles with offset alpha
/// This task cannot be displayed on Dart, so it was done in the Flutter project and moved here as
/// an executor class for information and commented out so that it does not throw an error

/*class Squares extends StatefulWidget {
  const Squares({Key key}) : super(key: key);

  @override
  _SquaresState createState() => _SquaresState();
}

class _SquaresState extends State<Squares> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return CustomPaint(
      size: Size(size.width, size.width),
      painter: Impl(),
    );
  }
}

class Impl extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// offset value [alpha]
    const alpha = 0.1;

    Paint paint = Paint()
      ..color = Colors.blue
      ..strokeCap = StrokeCap.square
      ..strokeWidth = 1;

    void draw(Offset A, Offset B, Offset C, Offset D, int depth) {
      if (depth < 1) return;

      canvas.drawLine(A, B, paint);
      canvas.drawLine(B, C, paint);
      canvas.drawLine(C, D, paint);
      canvas.drawLine(D, A, paint);

      /// point A1dx will be equal to: (1-alpha) * Adx + alpha * Bdx
      /// point A1dy will be equal to: (1-alpha) * Adу + alpha * Bdу
      /// by the same principle, we will rewrite all the points for the next rectangle
      final a1 = Offset(A.dx * (1 - alpha) + B.dx * alpha, A.dy * (1 - alpha) + B.dy * alpha);
      final b1 = Offset(B.dx * (1 - alpha) + C.dx * alpha, B.dy * (1 - alpha) + C.dy * alpha);
      final c1 = Offset(C.dx * (1 - alpha) + D.dx * alpha, C.dy * (1 - alpha) + D.dy * alpha);
      final d1 = Offset(D.dx * (1 - alpha) + A.dx * alpha, D.dy * (1 - alpha) + A.dy * alpha);
      draw(a1, b1, c1, d1, depth - 1);
    }

    draw(
      const Offset(10, 10),
      Offset(size.width - 10, 10),
      Offset(size.width - 10, size.width - 10),
      Offset(10, size.width - 10),
      70,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}*/
