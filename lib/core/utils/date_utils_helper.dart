import 'package:intl/intl.dart';

class DateUtilsHelper {
  /// Formats a DateTime object into a specified format.
  ///
  /// - `date`: The DateTime object to format.
  /// - `format`: The date format string (default: 'MMM dd', e.g., "APR 30").
  ///
  /// Example formats:
  /// - `"MMM dd"` → "APR 30"
  /// - `"yyyy-MM-dd"` → "2025-02-25"
  /// - `"dd/MM/yyyy"` → "25/02/2025"
  /// - `"EEEE, MMM d"` → "Tuesday, Feb 25"
  static String formatDate(DateTime date, {String format = 'MMM dd'}) {
    return DateFormat(format).format(date).toUpperCase();
  }
}
