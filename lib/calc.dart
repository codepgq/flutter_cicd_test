class Calc {
  int add(int a, int b) {
    return a + b;
  }

  int subtract(int a, int b) {
    return a - b;
  }

  int multiply(int a, int b) {
    return a * b;
  }

  double divide(int a, int b) {
    if (b == 0) {
      throw ArgumentError('Division by zero');
    }
    return a / b;
  }
}
