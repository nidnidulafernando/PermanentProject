import 'package:intl/intl.dart';

String formatNumberWithCommas(int number) {
  final numberFormatter = NumberFormat('#,##0');
  return numberFormatter.format(number);
}
