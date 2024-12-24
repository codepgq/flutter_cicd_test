import 'package:flutter_test/flutter_test.dart';
import 'package:cicd_test/calc.dart';

void main() {
  group('Calc', () {
    final calc = Calc();

    test('addition', () {
      expect(calc.add(1, 2), 3);
      expect(calc.add(-1, -1), -2);
      expect(calc.add(0, 0), 0);
    });

    test('subtraction', () {
      expect(calc.subtract(2, 1), 1);
      expect(calc.subtract(-1, -1), 0);
      expect(calc.subtract(0, 0), 0);
    });

    test('multiplication', () {
      expect(calc.multiply(2, 3), 6);
      expect(calc.multiply(-1, -1), 1);
      expect(calc.multiply(0, 100), 0);
    });

    test('division', () {
      expect(calc.divide(6, 3), 2.0);
      expect(calc.divide(-4, -2), 2.0);
      expect(calc.divide(0, 1), 0.0);
    });

    test('division by zero', () {
      expect(() => calc.divide(1, 0), throwsArgumentError);
    });
  });
}
