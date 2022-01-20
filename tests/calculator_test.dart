import '../src/calculator.dart';

class CalculatorTest {
  List listNumbers = [10, 11, 13, 46];
  List listResults = [23, 33, 45, 495];

  void testCalculator() {
    for (var i = 0; i < listNumbers.length; i++) {
      var calculator = Calculator(listNumbers[i]);
      var total = calculator.calcule();
      print("total ${total}, Está correto? ${total == listResults[i]}");
    }
  }
}
