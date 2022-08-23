/*
Dynamic Programming (DP) is an algorithmic technique for solving an optimization problem
by breaking it down into simpler subproblems and utilizing the fact that the optimal solution
to the overall problem depends upon the optimal solution to its subproblems.
*/

/// Set of various algorithms regarding Dynamic Programming - lecture #10
///
/// https://youtu.be/EdhN_gEDfUM?list=PLRDzFCPr95fK7tr47883DFUbm4GeOjjc0&t=1110
///
void dynamicProgramming() {
  // print(fibonacciDynamic(10));
  // numberOfPossibleJumps(10, [false, true, true, ...List.generate(10 - 3, (index) => true)]);
  print(computePossibleWays().toString());
}

/// BAD 👎 example of Fibonacci calculation => algorithm's complexity is [O(Fibonacci(n))]
int fibonacciRecursive(n) {
  if (n <= 1) return n;
  return (fibonacciRecursive(n - 1) + fibonacciRecursive(n - 2));
}

/// GOOD 👍 example of Fibonacci calculation => algorithm's complexity is [O(n-2)]
int fibonacciDynamic(n) {
  final fibArray = [0, 1, ...List.generate(n - 1, (index) => 0)];
  for (int i = 2; i <= n; i++) {
    fibArray[i] = fibArray[i - 1] + fibArray[i - 2];
  }
  return fibArray[n];
}

/// Algorithm for calculating the number of possible options for a grasshopper to jump from point 1
/// to point [n] with list of allowed [points] and a jump length of 1 or 2 or 3 cells.
int numberOfPossibleJumps(int n, List<bool> points) {
  List<int> k = [0, 1, (points[2] ? 1 : 0), ...List.generate(n - 3, (index) => 0)];
  for (int i = 3; i < n; i++) {
    if (points[i]) {
      k[i] = k[i - 1] + k[i - 2] + k[i - 3];
    }
  }
  // print(k);
  return k[n - 1];
}

/// King's board
/*
  How many ways for the King to come from [X1,Y1] to [X9,Y9]
  Here is a table I've calculated manually
  From the first glance we can recognize a Pascal's triangle rotated by 45 deg - cool !!!!

    ---------------------------------------------------------> Y
    | 1   | 1   | 1   | 1   | 1   | 1   | 1   | 1   | 1   |
    ------------------------------------------------------
    | 1   | 2   | 3   | 4   | 5   | 6   | 7   | 8   | 9   |
    ------------------------------------------------------
    | 1   | 3   | 6   | 10  | 15  | 21  | 28  | 36  | 45  |
    ------------------------------------------------------
    | 1   | 4   | 10  | 20  | 35  | 56  | 84  | 120 | 165 |
    ------------------------------------------------------
    | 1   | 5   | 15  | 35  | 70  | 126 | 210 | 330 | 495 |
    ------------------------------------------------------
    | 1   | 6   | 21  | 56  | 126 | 252 | 462 | 972 | 1287|
    ------------------------------------------------------
    | 1   | 7   | 28  | 84  | 210 | 462 | 924 | 1716| 3003|
    ------------------------------------------------------
    | 1   | 8   | 36  | 120 | 330 | 792 | 1716| 3432| 6435|
    ------------------------------------------------------
    | 1   | 9   | 45  | 165 | 495 | 1287| 3003| 6435|12870|
    ------------------------------------------------------
    |
    v
    X
*/

const size = 9;
int computePossibleWays() {
  // generate an two-dimensions Array filled with 0s
  var list = List.generate(size, (index) => List.generate(size, (index) => 0));

  for (int i = 0; i < size; i++) {
    for (int j = 0; j < size; j++) {
      if (i == 0 || j == 0) {
        // fill the 1st row and the 1st column with 1s
        list[i][j] = 1;
        continue;
      }

      // return the last element with is the result of possible ways
      list[i][j] = list[i][j - 1] + list[i - 1][j];
    }
  }

  return list[size - 1][size - 1]; // => 12870 with size == 9;
}
