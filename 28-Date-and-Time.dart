void main(){
  var date = DateTime.now(); // type : DateTime
  print(date);
  print(date.year);
  print(date.month);
  print(date.day);
  print(date.hour);
  print(date.minute);
  print(date.second);
  print(date.millisecond);
  print(date.microsecond);
  print(date.weekday);
  print(date.timeZoneName);
  print(date.timeZoneOffset);
  print(date.isUtc);
  print(date.isAfter(DateTime(2022)));
  print(date.isBefore(DateTime(2025)));
  print(date.isAtSameMomentAs(DateTime(2021)));
  print(date.add(Duration(days: 1)));
  print(date.subtract(Duration(days: 1)));
  print(date.difference(DateTime(2021)));
  print(date.toIso8601String());
  print(date.toLocal());
  print(date.toUtc());
  print(date.toString());

  var date2 = DateTime.parse("2021-01-01 12:00:00");
  print(date2);
}