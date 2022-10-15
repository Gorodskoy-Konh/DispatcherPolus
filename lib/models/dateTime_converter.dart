class DateTimeConverter {
  // in the server DateTime is stored as seconds since epoch
  static DateTime timestampToDateTime(int timestamp) =>
      DateTime.fromMillisecondsSinceEpoch(timestamp * 1000);

  static int dateTimeToTimestamp(DateTime dateTime) =>
      dateTime.millisecondsSinceEpoch ~/ 1000;
}