import 'package:intl/intl.dart';

var formatter = NumberFormat.decimalPattern();
class DecimalsSeparator{
  static bool isInteger(num value) => (value % 1) == 0;
  static String convertToRupiah(double number){
    var splitted = number.toStringAsFixed(2).split(".");
    final beforeDecimal = splitted[0];
    final afterDecimal = splitted[1];

    var beforeDecimalFormated = formatter.format(double.parse(beforeDecimal)).toString();
    beforeDecimalFormated = beforeDecimalFormated.replaceAll(",", ".");
    final result = "Rp" + beforeDecimalFormated + "," + afterDecimal;
    return result;
  }

  static String toDotDecimalSeparator(double number){
    var _isInt = isInteger(number);
    var splitted = number.toStringAsFixed(2).split(".");

    final beforeDecimal = splitted[0];
    final afterDecimal = splitted[1];

    var beforeDecimalFormated = formatter.format(double.parse(beforeDecimal)).toString();
    beforeDecimalFormated = beforeDecimalFormated.replaceAll(",", ".");
    if(_isInt){
      return beforeDecimalFormated;
    }
    final result = beforeDecimalFormated + "," + afterDecimal;
    return result;
  }
}