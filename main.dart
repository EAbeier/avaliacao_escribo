import 'dart:convert';

import 'dart:io';

import 'src/calculator.dart';
import 'tests/calculator_test.dart';

void main() {
  final tests = CalculatorTest();
  print("------------------------------");
  print("      RODANDO TESTES          ");
  print("------------------------------");
  tests.testCalculator();
  print("------------------------------");

  var doIContinue = 1;
  while (doIContinue == 1) {
    print("Entre com um numero inteiro positivo");
    var input = stdin.readLineSync(encoding: utf8);

    if (input != null) {
      int? number = int.tryParse(input) ?? null;

      if (number != null && number > 0) {
        final calculator = Calculator(number);
        var total = calculator.calcule();
        print(total);
      } else {
        print("Valor informado não é um número positivo inteiro");
      }
    }
    var whileSwitch = true;
    while (whileSwitch) {
      print("Deseja realizar outra operação sim(s) ou não (n)");
      var resp = stdin.readLineSync();
      if (resp != null) {
        switch (resp.toUpperCase()) {
          case 'S':
            doIContinue = 1;
            whileSwitch = false;
            break;
          case 'N':
            doIContinue = 0;
            whileSwitch = false;
            break;
          default:
            print("Opção não identificada");
        }
      }
    }
  }
}
