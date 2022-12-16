class DifferenceOfSquares {
  double sumOfSquares(int n) {
    return (n * (n + 1) * (2 * n + 1)) / 6;
  }

  double squareOfSum(int n) {
    final sum = (n * (n + 1)) / 2;
    return sum * sum;
  }

  double differenceOfSquares(int n) {
    return squareOfSum(n) - sumOfSquares(n);
  }
}
