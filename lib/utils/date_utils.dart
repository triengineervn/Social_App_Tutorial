import 'package:intl/intl.dart';

String getHourAndMinute(String timeInbox) {
  DateTime dateTime = DateTime.parse(timeInbox);
  String formattedTime = DateFormat.Hm().format(dateTime);
  return formattedTime;
}
