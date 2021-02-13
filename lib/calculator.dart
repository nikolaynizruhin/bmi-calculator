import 'dart:math';

class Calculator {
  final int height;
  final int weight;

  Calculator({ this.height, this.weight });

  double getBMI() {
    return weight / pow(height / 100, 2);
  }

  String getResult() {
    double bmi = getBMI();

    if (bmi >= 25) {
      return 'Overweight';
    }

    if (bmi > 18.5) {
      return 'Normal';
    }

    return 'Underweight';
  }

  String getInterpretation() {
    double bmi = getBMI();

    if (bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more.';
    }

    if (bmi > 18.5) {
      return 'You have a normal body weight. Good job!';
    }

    return 'You have a lower than normal body weight. You can eat a bit more.';
  }
}