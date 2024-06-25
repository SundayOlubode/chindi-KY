String formatCurrency(int amount) {
  List<String> digits = amount.toString().split('').reversed.toList();
  String result = '';

  for (int i = 1; i <= digits.length; i++) {
    String digit = digits[i - 1];
    result += digit;

    if (i != 0 && i % 3 == 0) {
      result += ',';
    }
  }
  return 'Ksh ${result.split('').reversed.join('')}';
}
