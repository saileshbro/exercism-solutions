class CollatzConjecture {
  int steps(int n) {
    int mutable = n;
    if (mutable <= 0) throw ArgumentError('Only positive integers are allowed');
    if (mutable == 1) return 0;
    int totalSteps = 0;
    while (true) {
      if (mutable % 2 == 0) {
        mutable = mutable ~/ 2;
        totalSteps++;
      } else {
        mutable = mutable * 3 + 1;
        totalSteps++;
      }
      if (mutable == 1) return totalSteps;
    }
  }
}
