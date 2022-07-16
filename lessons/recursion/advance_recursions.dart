/// Выполнение задачек по рекурсии из лекции №8
/// по курсу Тимофея Хирьянова "Алгоритмы на Python 3"
/// https://youtu.be/2XFaK3bgT7w?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0
/// Генерация всех перестановок
void advanceRecursions() {
  generatePermutations(3);
  // generateNumbers(3, 3, prefix: null);
  // generateBin(3, prefix: '');
}

/// Генерация все числа (с лидирующими незначащими нулями)
/// в [n]-ричной системе счисления (N<=10)
/// длины [m]
void generateNumbers(int n, int m, {List<int> prefix}) {
  prefix ??= [];
  if (m == 0) {
    print(prefix);
    return;
  }

  for (var i = 0; i < n; i++) {
    prefix.add(i);
    generateNumbers(n, m - 1, prefix: prefix);
    prefix.removeLast();
  }
}

/// Генерация чисел для двоичной системы счисления
void generateBin(m, {prefix = ''}) {
  if (m == 0) {
    print(prefix);
    return;
  }
  generateBin(m - 1, prefix: prefix + '0');
  generateBin(m - 1, prefix: prefix + '1');
}

/// Генерация всех перестановок [n] чисел в [m] позициях с префиксом [prefix]
void generatePermutations(int n, {int m = -1, List<int> prefix}) {
  m = m == -1 ? n : m;
  prefix ??= [];
  if (m == 0) {
    print(prefix.join(','));
    return;
  }

  for (var i = 1; i <= n; i++) {
    if (prefix.contains(i)) continue;
    prefix.add(i);
    generatePermutations(n, m: m - 1, prefix: prefix);
    prefix.removeLast();
  }
}
