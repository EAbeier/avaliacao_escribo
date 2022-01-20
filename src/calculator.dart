class Calculator {
  final int _number;

  var _total = 0;

  Calculator(this._number);

  int calcule() {
    for (var i = 0; i < _number; i++) {
      if (i % 3 == 0 || i % 5 == 0) {
        _total += i;
      }
    }
    return _total;
  }
}
