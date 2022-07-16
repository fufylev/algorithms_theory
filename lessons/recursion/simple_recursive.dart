/// Выполнение задачек по рекурсии из лекции №7
/// по курсу Тимофея Хирьянова "Алгоритмы на Python 3"
/// https://youtu.be/0Bc8zLURY-c?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0
///
void simpleRecursions() {
  print(fac(5));
  print(gcd(5, 20));
  print(gcdShort(5, 20));
  print(pow(2, 5));
  print('Минимальное кол-во ходов: ${hanoi(5)}');
}

/// Вычисление факториала от числа [n]
int fac(int n) {
  assert(n >= 0, 'Факториал не определен');
  return n == 0 ? 1 : fac(n - 1) * n;
}

/// Алгоритм Евклида
/// эффективный алгоритм для нахождения наибольшего общего делителя
/// (greatest common divisor (gcd)) двух целых чисел (или общей меры двух отрезков)
/// это общий пример вычисления Алгоритма Евклида
int gcd(int a, int b) {
  if (a == b)
    return a;
  else if (a > b) {
    return gcd(a - b, b);
  } else {
    return gcd(a, b - a);
  }
}

/// Алгоритм Евклида
/// эффективный алгоритм для нахождения наибольшего общего делителя
/// (greatest common divisor (gcd)) двух целых чисел (или общей меры двух отрезков)
/// это короткий пример вычисления Алгоритма Евклида
int gcdShort(int a, int b) {
  return b == 0 ? a : gcdShort(b, a % b);
}

/// функция быстрого возведения в степень
pow(num a, int n) {
  assert(n >= 0, 'степень должна быть больше 0');
  return n == 0
      ? 1
      : n % 2 == 1
          ? pow(a, n - 1) * a
          : pow(a * a, (n / 2).floor());
}

/// Ханойская башня - алгоритм перекладывания дисков башни с кол-вом дисков [n]
/// и кол-вом башен равным 3
int hanoi(int n) {
  /// кол-во шагов выполнения алгоритма
  int count = 0;
  String a = 'A';
  String b = 'B';
  String c = 'C';

  void hanoiImpl(int n, String a, String b, String c) {
    void moveNext(int n, String i, String j) {
      count++;
      // print('Ход №$count: Номер диска $n перемещается $i -> $j');
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

/// Рисование прямоугольников со смещением альфа
/// Данную задачу нельзя отобразить на Dart поэтому она выполнена в проекте Flutter
/// и перенесена сюда в виде класса исполнителя для информации и закомментировал
/// чтобы не выдавала ошибку
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
    /// величина смещения [alpha]
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

      /// точка А1dx будет равна: (1-alpha) * Adx + alpha * Bdx
      /// а точка А1dу будет равна: (1-alpha) * Adу + alpha * Bdу
      /// по такому же принципу перепишем все точки для следующего прямоугольника
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
