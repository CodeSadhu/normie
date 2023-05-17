import 'package:intl/intl.dart';

class Normie {
  Normie._();

  static String formatDate({
    required String date,

    /// Defaults to 'dd/MM/yyyy'
    String? inputFormat,

    /// Defaults to 'yyyy/MM/dd'
    String? outputFormat,
  }) {
    DateFormat? inFormat = DateFormat(inputFormat ?? 'dd/MM/yyyy');
    DateFormat? outFormat = DateFormat(outputFormat ?? 'yyyy/MM/dd');

    DateTime? inputDate = inFormat.parse(date);
    String outputDate = outFormat.format(inputDate);

    return outputDate;
  }
}
