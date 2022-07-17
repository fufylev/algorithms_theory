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
  print(fibonacciDynamic(10));
  numberOfPossibleJumps(10, [false, true, true, ...List.generate(10 - 3, (index) => true)]);
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
///
int numberOfPossibleJumps(int n, List<bool> points) {
  List<int> k = [0, 1, (points[2] ? 1 : 0), ...List.generate(n - 3, (index) => 0)];
  for (int i = 3; i < n; i++) {
    if (points[i]) {
      k[i] = k[i - 1] + k[i - 2] + k[i - 3];
    }
  }
  print(k);
  return k[n - 1];
}
