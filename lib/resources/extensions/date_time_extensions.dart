import 'package:intl/intl.dart';

extension DateTimeExtensions on DateTime {
  String get monthYearFormat {
    final formatter = DateFormat('MMMM yyyy');

    return formatter.format(this);
  }
}
