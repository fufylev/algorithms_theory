/// Performing various tasks of recursion from lecture #8
///
/// https://youtu.be/2XFaK3bgT7w?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0
/// Generation of all permutations
void advanceRecursions() {
  generatePermutations(3);
  // generateNumbers(3, 3, prefix: null);
  // generateBin(3, prefix: '');
}

/// Generate all numbers (with leading non-significant zeros)
/// in [n] number system (N<=10) length of [m]
///
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

/// Number generation for the binary number system
void generateBin(m, {prefix = ''}) {
  if (m == 0) {
    print(prefix);
    return;
  }
  generateBin(m - 1, prefix: prefix + '0');
  generateBin(m - 1, prefix: prefix + '1');
}

/// Generating all permutations of [n] numbers in [m] positions with prefix [prefix]
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
